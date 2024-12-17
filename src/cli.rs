use clap::Parser;
use log::LevelFilter;

use crate::Error;

#[derive(Parser, Debug)]
#[clap(name = "cryptix-miner", version, about = "A Cryptix high performance CPU miner", term_width = 0)]
pub struct Opt {
    #[clap(short, long, help = "Enable debug logging level")]
    pub debug: bool,
    #[clap(short = 'a', long = "mining-address", help = "The Cryptix address for the miner reward")]
    pub mining_address: String,
    #[clap(short = 's', long = "cryptixd-address", default_value = "127.0.0.1", help = "The IP of the cryptixd instance")]
    pub cryptixd_address: String,

    #[clap(long = "devfund-percent", help = "The percentage of blocks to send to the devfund (minimum 1%)", default_value = "1", parse(try_from_str = parse_devfund_percent))]
    pub devfund_percent: u16,

    #[clap(short, long, help = "Cryptixd port [default: Mainnet = 19201, Testnet = 19202]")]
    port: Option<u16>,

    #[clap(long, help = "Use testnet instead of mainnet [default: false]")]
    testnet: bool,
    #[clap(short = 't', long = "threads", help = "Amount of CPU miner threads to launch [default: 0]")]
    pub num_threads: Option<u16>,
    #[clap(
        long = "mine-when-not-synced",
        help = "Mine even when cryptixd says it is not synced",
        long_help = "Mine even when cryptixd says it is not synced, only useful when passing `--allow-submit-block-when-not-synced` to cryptixd  [default: false]"
    )]
    pub mine_when_not_synced: bool,

    #[clap(skip)]
    pub devfund_address: String,
}

fn parse_devfund_percent(s: &str) -> Result<u16, &'static str> {
    let err = "devfund-percent should be --devfund-percent=XX.YY up to 2 numbers after the dot";
    let mut splited = s.split('.');
    let prefix = splited.next().ok_or(err)?;
    // if there's no postfix then it's 0.
    let postfix = splited.next().ok_or(err).unwrap_or("0");
    // error if there's more than a single dot
    if splited.next().is_some() {
        return Err(err);
    };
    // error if there are more than 2 numbers before or after the dot
    if prefix.len() > 2 || postfix.len() > 2 {
        return Err(err);
    }
    let postfix: u16 = postfix.parse().map_err(|_| err)?;
    let prefix: u16 = prefix.parse().map_err(|_| err)?;
    // can't be more than 99.99%,
    if prefix >= 100 || postfix >= 100 {
        return Err(err);
    }
    if prefix < 1 {
        // Force at least 1 percent
        return Ok(100u16);  // 1% = 100
    }
    // DevFund is out of 10_000
    Ok(prefix * 100 + postfix)
}


impl Opt {
    pub fn process(&mut self) -> Result<(), Error> {
        //self.gpus = None;
        if self.cryptixd_address.is_empty() {
            self.cryptixd_address = "127.0.0.1".to_string();
        }

        if !self.cryptixd_address.contains("://") {
            let port_str = self.port().to_string();
            let (cryptixd, port) = match self.cryptixd_address.contains(':') {
                true => self.cryptixd_address.split_once(':').expect("We checked for `:`"),
                false => (self.cryptixd_address.as_str(), port_str.as_str()),
            };
            self.cryptixd_address = format!("grpc://{}:{}", cryptixd, port);
        }
        log::info!("cryptixd address: {}", self.cryptixd_address);

        if self.num_threads.is_none() {
            self.num_threads = Some(0);
        }

        let miner_network = self.mining_address.split(':').next();
        self.devfund_address = String::from("cryptix:qq70k0g89c0rjj4pe38495kflpjaahy2xlhp9jukufx8znwvj0p3wlxw068j8");
        let devfund_network = self.devfund_address.split(':').next();
        if miner_network.is_some() && devfund_network.is_some() && miner_network != devfund_network {
            self.devfund_percent = 0;
            log::info!(
                "Mining address ({}) and devfund ({}) are not from the same network. Disabling devfund.",
                miner_network.unwrap(),
                devfund_network.unwrap()
            )
        }
        Ok(())
    }

    fn port(&mut self) -> u16 {
        *self.port.get_or_insert(if self.testnet { 19202 } else { 19201 })
    }

    pub fn log_level(&self) -> LevelFilter {
        if self.debug {
            LevelFilter::Debug
        } else {
            LevelFilter::Info
        }
    }
}
