/// RPCError represents a generic non-internal error.
///
/// Receivers of any ResponseMessage are expected to check whether its error field is not null.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcError {
    #[prost(string, tag="1")]
    pub message: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcBlock {
    #[prost(message, optional, tag="1")]
    pub header: ::core::option::Option<RpcBlockHeader>,
    #[prost(message, repeated, tag="2")]
    pub transactions: ::prost::alloc::vec::Vec<RpcTransaction>,
    #[prost(message, optional, tag="3")]
    pub verbose_data: ::core::option::Option<RpcBlockVerboseData>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcBlockHeader {
    #[prost(uint32, tag="1")]
    pub version: u32,
    #[prost(message, repeated, tag="12")]
    pub parents: ::prost::alloc::vec::Vec<RpcBlockLevelParents>,
    #[prost(string, tag="3")]
    pub hash_merkle_root: ::prost::alloc::string::String,
    #[prost(string, tag="4")]
    pub accepted_id_merkle_root: ::prost::alloc::string::String,
    #[prost(string, tag="5")]
    pub utxo_commitment: ::prost::alloc::string::String,
    #[prost(int64, tag="6")]
    pub timestamp: i64,
    #[prost(uint32, tag="7")]
    pub bits: u32,
    #[prost(uint64, tag="8")]
    pub nonce: u64,
    #[prost(uint64, tag="9")]
    pub daa_score: u64,
    #[prost(string, tag="10")]
    pub blue_work: ::prost::alloc::string::String,
    #[prost(string, tag="14")]
    pub pruning_point: ::prost::alloc::string::String,
    #[prost(uint64, tag="13")]
    pub blue_score: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcBlockLevelParents {
    #[prost(string, repeated, tag="1")]
    pub parent_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcBlockVerboseData {
    #[prost(string, tag="1")]
    pub hash: ::prost::alloc::string::String,
    #[prost(double, tag="11")]
    pub difficulty: f64,
    #[prost(string, tag="13")]
    pub selected_parent_hash: ::prost::alloc::string::String,
    #[prost(string, repeated, tag="14")]
    pub transaction_ids: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(bool, tag="15")]
    pub is_header_only: bool,
    #[prost(uint64, tag="16")]
    pub blue_score: u64,
    #[prost(string, repeated, tag="17")]
    pub children_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(string, repeated, tag="18")]
    pub merge_set_blues_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(string, repeated, tag="19")]
    pub merge_set_reds_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(bool, tag="20")]
    pub is_chain_block: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcTransaction {
    #[prost(uint32, tag="1")]
    pub version: u32,
    #[prost(message, repeated, tag="2")]
    pub inputs: ::prost::alloc::vec::Vec<RpcTransactionInput>,
    #[prost(message, repeated, tag="3")]
    pub outputs: ::prost::alloc::vec::Vec<RpcTransactionOutput>,
    #[prost(uint64, tag="4")]
    pub lock_time: u64,
    #[prost(string, tag="5")]
    pub subnetwork_id: ::prost::alloc::string::String,
    #[prost(uint64, tag="6")]
    pub gas: u64,
    #[prost(string, tag="8")]
    pub payload: ::prost::alloc::string::String,
    #[prost(message, optional, tag="9")]
    pub verbose_data: ::core::option::Option<RpcTransactionVerboseData>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcTransactionInput {
    #[prost(message, optional, tag="1")]
    pub previous_outpoint: ::core::option::Option<RpcOutpoint>,
    #[prost(string, tag="2")]
    pub signature_script: ::prost::alloc::string::String,
    #[prost(uint64, tag="3")]
    pub sequence: u64,
    #[prost(uint32, tag="5")]
    pub sig_op_count: u32,
    #[prost(message, optional, tag="4")]
    pub verbose_data: ::core::option::Option<RpcTransactionInputVerboseData>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcScriptPublicKey {
    #[prost(uint32, tag="1")]
    pub version: u32,
    #[prost(string, tag="2")]
    pub script_public_key: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcTransactionOutput {
    #[prost(uint64, tag="1")]
    pub amount: u64,
    #[prost(message, optional, tag="2")]
    pub script_public_key: ::core::option::Option<RpcScriptPublicKey>,
    #[prost(message, optional, tag="3")]
    pub verbose_data: ::core::option::Option<RpcTransactionOutputVerboseData>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcOutpoint {
    #[prost(string, tag="1")]
    pub transaction_id: ::prost::alloc::string::String,
    #[prost(uint32, tag="2")]
    pub index: u32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcUtxoEntry {
    #[prost(uint64, tag="1")]
    pub amount: u64,
    #[prost(message, optional, tag="2")]
    pub script_public_key: ::core::option::Option<RpcScriptPublicKey>,
    #[prost(uint64, tag="3")]
    pub block_daa_score: u64,
    #[prost(bool, tag="4")]
    pub is_coinbase: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcTransactionVerboseData {
    #[prost(string, tag="1")]
    pub transaction_id: ::prost::alloc::string::String,
    #[prost(string, tag="2")]
    pub hash: ::prost::alloc::string::String,
    #[prost(uint64, tag="4")]
    pub mass: u64,
    #[prost(string, tag="12")]
    pub block_hash: ::prost::alloc::string::String,
    #[prost(uint64, tag="14")]
    pub block_time: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcTransactionInputVerboseData {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RpcTransactionOutputVerboseData {
    #[prost(string, tag="5")]
    pub script_public_key_type: ::prost::alloc::string::String,
    #[prost(string, tag="6")]
    pub script_public_key_address: ::prost::alloc::string::String,
}
/// GetCurrentNetworkRequestMessage requests the network cryptixd is currently running against.
///
/// Possible networks are: Mainnet, Testnet, Simnet, Devnet
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetCurrentNetworkRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetCurrentNetworkResponseMessage {
    #[prost(string, tag="1")]
    pub current_network: ::prost::alloc::string::String,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// SubmitBlockRequestMessage requests to submit a block into the DAG.
/// Blocks are generally expected to have been generated using the getBlockTemplate call.
///
/// See: GetBlockTemplateRequestMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SubmitBlockRequestMessage {
    #[prost(message, optional, tag="2")]
    pub block: ::core::option::Option<RpcBlock>,
    #[prost(bool, tag="3")]
    pub allow_non_daa_blocks: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SubmitBlockResponseMessage {
    #[prost(enumeration="submit_block_response_message::RejectReason", tag="1")]
    pub reject_reason: i32,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// Nested message and enum types in `SubmitBlockResponseMessage`.
pub mod submit_block_response_message {
    #[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord, ::prost::Enumeration)]
    #[repr(i32)]
    pub enum RejectReason {
        None = 0,
        BlockInvalid = 1,
        IsInIbd = 2,
    }
    impl RejectReason {
        /// String value of the enum field names used in the ProtoBuf definition.
        ///
        /// The values are not transformed in any way and thus are considered stable
        /// (if the ProtoBuf definition does not change) and safe for programmatic use.
        pub fn as_str_name(&self) -> &'static str {
            match self {
                RejectReason::None => "NONE",
                RejectReason::BlockInvalid => "BLOCK_INVALID",
                RejectReason::IsInIbd => "IS_IN_IBD",
            }
        }
    }
}
/// GetBlockTemplateRequestMessage requests a current block template.
/// Callers are expected to solve the block template and submit it using the submitBlock call
///
/// See: SubmitBlockRequestMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBlockTemplateRequestMessage {
    /// Which cryptix address should the coinbase block reward transaction pay into
    #[prost(string, tag="1")]
    pub pay_address: ::prost::alloc::string::String,
    #[prost(string, tag="2")]
    pub extra_data: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBlockTemplateResponseMessage {
    #[prost(message, optional, tag="3")]
    pub block: ::core::option::Option<RpcBlock>,
    /// Whether cryptixd thinks that it's synced.
    /// Callers are discouraged (but not forbidden) from solving blocks when cryptixd is not synced.
    /// That is because when cryptixd isn't in sync with the rest of the network there's a high
    /// chance the block will never be accepted, thus the solving effort would have been wasted.
    #[prost(bool, tag="2")]
    pub is_synced: bool,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// NotifyBlockAddedRequestMessage registers this connection for blockAdded notifications.
///
/// See: BlockAddedNotificationMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyBlockAddedRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyBlockAddedResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// BlockAddedNotificationMessage is sent whenever a blocks has been added (NOT accepted)
/// into the DAG.
///
/// See: NotifyBlockAddedRequestMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BlockAddedNotificationMessage {
    #[prost(message, optional, tag="3")]
    pub block: ::core::option::Option<RpcBlock>,
}
/// GetPeerAddressesRequestMessage requests the list of known cryptixd addresses in the
/// current network. (mainnet, testnet, etc.)
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetPeerAddressesRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetPeerAddressesResponseMessage {
    #[prost(message, repeated, tag="1")]
    pub addresses: ::prost::alloc::vec::Vec<GetPeerAddressesKnownAddressMessage>,
    #[prost(message, repeated, tag="2")]
    pub banned_addresses: ::prost::alloc::vec::Vec<GetPeerAddressesKnownAddressMessage>,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetPeerAddressesKnownAddressMessage {
    #[prost(string, tag="1")]
    pub addr: ::prost::alloc::string::String,
}
/// GetSelectedTipHashRequestMessage requests the hash of the current virtual's
/// selected parent.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSelectedTipHashRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSelectedTipHashResponseMessage {
    #[prost(string, tag="1")]
    pub selected_tip_hash: ::prost::alloc::string::String,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetMempoolEntryRequestMessage requests information about a specific transaction
/// in the mempool.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetMempoolEntryRequestMessage {
    /// The transaction's TransactionID.
    #[prost(string, tag="1")]
    pub tx_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetMempoolEntryResponseMessage {
    #[prost(message, optional, tag="1")]
    pub entry: ::core::option::Option<MempoolEntry>,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetMempoolEntriesRequestMessage requests information about all the transactions
/// currently in the mempool.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetMempoolEntriesRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetMempoolEntriesResponseMessage {
    #[prost(message, repeated, tag="1")]
    pub entries: ::prost::alloc::vec::Vec<MempoolEntry>,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct MempoolEntry {
    #[prost(uint64, tag="1")]
    pub fee: u64,
    #[prost(message, optional, tag="3")]
    pub transaction: ::core::option::Option<RpcTransaction>,
}
/// GetConnectedPeerInfoRequestMessage requests information about all the p2p peers
/// currently connected to this cryptixd.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetConnectedPeerInfoRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetConnectedPeerInfoResponseMessage {
    #[prost(message, repeated, tag="1")]
    pub infos: ::prost::alloc::vec::Vec<GetConnectedPeerInfoMessage>,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetConnectedPeerInfoMessage {
    #[prost(string, tag="1")]
    pub id: ::prost::alloc::string::String,
    #[prost(string, tag="2")]
    pub address: ::prost::alloc::string::String,
    /// How long did the last ping/pong exchange take
    #[prost(int64, tag="3")]
    pub last_ping_duration: i64,
    /// Whether this cryptixd initiated the connection
    #[prost(bool, tag="6")]
    pub is_outbound: bool,
    #[prost(int64, tag="7")]
    pub time_offset: i64,
    #[prost(string, tag="8")]
    pub user_agent: ::prost::alloc::string::String,
    /// The protocol version that this peer claims to support
    #[prost(uint32, tag="9")]
    pub advertised_protocol_version: u32,
    /// The timestamp of when this peer connected to this cryptixd
    #[prost(int64, tag="10")]
    pub time_connected: i64,
    /// Whether this peer is the IBD peer (if IBD is running)
    #[prost(bool, tag="11")]
    pub is_ibd_peer: bool,
}
/// AddPeerRequestMessage adds a peer to cryptixd's outgoing connection list.
/// This will, in most cases, result in cryptixd connecting to said peer.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddPeerRequestMessage {
    #[prost(string, tag="1")]
    pub address: ::prost::alloc::string::String,
    /// Whether to keep attempting to connect to this peer after disconnection
    #[prost(bool, tag="2")]
    pub is_permanent: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddPeerResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// SubmitTransactionRequestMessage submits a transaction to the mempool
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SubmitTransactionRequestMessage {
    #[prost(message, optional, tag="1")]
    pub transaction: ::core::option::Option<RpcTransaction>,
    #[prost(bool, tag="2")]
    pub allow_orphan: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SubmitTransactionResponseMessage {
    /// The transaction ID of the submitted transaction
    #[prost(string, tag="1")]
    pub transaction_id: ::prost::alloc::string::String,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// NotifyVirtualSelectedParentChainChangedRequestMessage registers this connection for virtualSelectedParentChainChanged notifications.
///
/// See: VirtualSelectedParentChainChangedNotificationMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyVirtualSelectedParentChainChangedRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyVirtualSelectedParentChainChangedResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// VirtualSelectedParentChainChangedNotificationMessage is sent whenever the DAG's selected parent
/// chain had changed.
///
/// See: NotifyVirtualSelectedParentChainChangedRequestMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VirtualSelectedParentChainChangedNotificationMessage {
    /// The chain blocks that were removed, in high-to-low order
    #[prost(string, repeated, tag="1")]
    pub removed_chain_block_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// The chain blocks that were added, in low-to-high order
    #[prost(string, repeated, tag="3")]
    pub added_chain_block_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
/// GetBlockRequestMessage requests information about a specific block
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBlockRequestMessage {
    /// The hash of the requested block
    #[prost(string, tag="1")]
    pub hash: ::prost::alloc::string::String,
    /// Whether to include transaction data in the response
    #[prost(bool, tag="3")]
    pub include_transactions: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBlockResponseMessage {
    #[prost(message, optional, tag="3")]
    pub block: ::core::option::Option<RpcBlock>,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetSubnetworkRequestMessage requests information about a specific subnetwork
///
/// Currently unimplemented
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSubnetworkRequestMessage {
    #[prost(string, tag="1")]
    pub subnetwork_id: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetSubnetworkResponseMessage {
    #[prost(uint64, tag="1")]
    pub gas_limit: u64,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetVirtualSelectedParentChainFromBlockRequestMessage requests the virtual selected
/// parent chain from some startHash to this cryptixd's current virtual
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetVirtualSelectedParentChainFromBlockRequestMessage {
    #[prost(string, tag="1")]
    pub start_hash: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetVirtualSelectedParentChainFromBlockResponseMessage {
    /// The chain blocks that were removed, in high-to-low order
    #[prost(string, repeated, tag="1")]
    pub removed_chain_block_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    /// The chain blocks that were added, in low-to-high order
    #[prost(string, repeated, tag="3")]
    pub added_chain_block_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetBlocksRequestMessage requests blocks between a certain block lowHash up to this
/// cryptixd's current virtual.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBlocksRequestMessage {
    #[prost(string, tag="1")]
    pub low_hash: ::prost::alloc::string::String,
    #[prost(bool, tag="2")]
    pub include_blocks: bool,
    #[prost(bool, tag="3")]
    pub include_transactions: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBlocksResponseMessage {
    #[prost(string, repeated, tag="4")]
    pub block_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(message, repeated, tag="3")]
    pub blocks: ::prost::alloc::vec::Vec<RpcBlock>,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetBlockCountRequestMessage requests the current number of blocks in this cryptixd.
/// Note that this number may decrease as pruning occurs.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBlockCountRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBlockCountResponseMessage {
    #[prost(uint64, tag="1")]
    pub block_count: u64,
    #[prost(uint64, tag="2")]
    pub header_count: u64,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetBlockDagInfoRequestMessage requests general information about the current state
/// of this cryptixd's DAG.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBlockDagInfoRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBlockDagInfoResponseMessage {
    #[prost(string, tag="1")]
    pub network_name: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub block_count: u64,
    #[prost(uint64, tag="3")]
    pub header_count: u64,
    #[prost(string, repeated, tag="4")]
    pub tip_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(double, tag="5")]
    pub difficulty: f64,
    #[prost(int64, tag="6")]
    pub past_median_time: i64,
    #[prost(string, repeated, tag="7")]
    pub virtual_parent_hashes: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(string, tag="8")]
    pub pruning_point_hash: ::prost::alloc::string::String,
    #[prost(uint64, tag="9")]
    pub virtual_daa_score: u64,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ResolveFinalityConflictRequestMessage {
    #[prost(string, tag="1")]
    pub finality_block_hash: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ResolveFinalityConflictResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyFinalityConflictsRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyFinalityConflictsResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct FinalityConflictNotificationMessage {
    #[prost(string, tag="1")]
    pub violating_block_hash: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct FinalityConflictResolvedNotificationMessage {
    #[prost(string, tag="1")]
    pub finality_block_hash: ::prost::alloc::string::String,
}
/// ShutDownRequestMessage shuts down this cryptixd.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ShutDownRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ShutDownResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetHeadersRequestMessage requests headers between the given startHash and the
/// current virtual, up to the given limit.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetHeadersRequestMessage {
    #[prost(string, tag="1")]
    pub start_hash: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub limit: u64,
    #[prost(bool, tag="3")]
    pub is_ascending: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetHeadersResponseMessage {
    #[prost(string, repeated, tag="1")]
    pub headers: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// NotifyUtxosChangedRequestMessage registers this connection for utxoChanged notifications
/// for the given addresses.
///
/// This call is only available when this cryptixd was started with `--utxoindex`
///
/// See: UtxosChangedNotificationMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyUtxosChangedRequestMessage {
    #[prost(string, repeated, tag="1")]
    pub addresses: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyUtxosChangedResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// UtxosChangedNotificationMessage is sent whenever the UTXO index had been updated.
///
/// See: NotifyUtxosChangedRequestMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UtxosChangedNotificationMessage {
    #[prost(message, repeated, tag="1")]
    pub added: ::prost::alloc::vec::Vec<UtxosByAddressesEntry>,
    #[prost(message, repeated, tag="2")]
    pub removed: ::prost::alloc::vec::Vec<UtxosByAddressesEntry>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UtxosByAddressesEntry {
    #[prost(string, tag="1")]
    pub address: ::prost::alloc::string::String,
    #[prost(message, optional, tag="2")]
    pub outpoint: ::core::option::Option<RpcOutpoint>,
    #[prost(message, optional, tag="3")]
    pub utxo_entry: ::core::option::Option<RpcUtxoEntry>,
}
/// StopNotifyingUtxosChangedRequestMessage unregisters this connection for utxoChanged notifications
/// for the given addresses.
///
/// This call is only available when this cryptixd was started with `--utxoindex`
///
/// See: UtxosChangedNotificationMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct StopNotifyingUtxosChangedRequestMessage {
    #[prost(string, repeated, tag="1")]
    pub addresses: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct StopNotifyingUtxosChangedResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetUtxosByAddressesRequestMessage requests all current UTXOs for the given cryptixd addresses
///
/// This call is only available when this cryptixd was started with `--utxoindex`
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetUtxosByAddressesRequestMessage {
    #[prost(string, repeated, tag="1")]
    pub addresses: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetUtxosByAddressesResponseMessage {
    #[prost(message, repeated, tag="1")]
    pub entries: ::prost::alloc::vec::Vec<UtxosByAddressesEntry>,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetBalanceByAddressRequest returns the total balance in unspent transactions towards a given address
///
/// This call is only available when this cryptixd was started with `--utxoindex`
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBalanceByAddressRequestMessage {
    #[prost(string, tag="1")]
    pub address: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBalanceByAddressResponseMessage {
    #[prost(uint64, tag="1")]
    pub balance: u64,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBalancesByAddressesRequestMessage {
    #[prost(string, repeated, tag="1")]
    pub addresses: ::prost::alloc::vec::Vec<::prost::alloc::string::String>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BalancesByAddressEntry {
    #[prost(string, tag="1")]
    pub address: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub balance: u64,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetBalancesByAddressesResponseMessage {
    #[prost(message, repeated, tag="1")]
    pub entries: ::prost::alloc::vec::Vec<BalancesByAddressEntry>,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetVirtualSelectedParentBlueScoreRequestMessage requests the blue score of the current selected parent
/// of the virtual block.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetVirtualSelectedParentBlueScoreRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetVirtualSelectedParentBlueScoreResponseMessage {
    #[prost(uint64, tag="1")]
    pub blue_score: u64,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// NotifyVirtualSelectedParentBlueScoreChangedRequestMessage registers this connection for
/// virtualSelectedParentBlueScoreChanged notifications.
///
/// See: VirtualSelectedParentBlueScoreChangedNotificationMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyVirtualSelectedParentBlueScoreChangedRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyVirtualSelectedParentBlueScoreChangedResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// VirtualSelectedParentBlueScoreChangedNotificationMessage is sent whenever the blue score
/// of the virtual's selected parent changes.
///
/// See NotifyVirtualSelectedParentBlueScoreChangedRequestMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VirtualSelectedParentBlueScoreChangedNotificationMessage {
    #[prost(uint64, tag="1")]
    pub virtual_selected_parent_blue_score: u64,
}
/// NotifyVirtualDaaScoreChangedRequestMessage registers this connection for
/// virtualDaaScoreChanged notifications.
///
/// See: VirtualDaaScoreChangedNotificationMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyVirtualDaaScoreChangedRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyVirtualDaaScoreChangedResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// VirtualDaaScoreChangedNotificationMessage is sent whenever the DAA score
/// of the virtual changes.
///
/// See NotifyVirtualDaaScoreChangedRequestMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VirtualDaaScoreChangedNotificationMessage {
    #[prost(uint64, tag="1")]
    pub virtual_daa_score: u64,
}
/// NotifyPruningPointUTXOSetOverrideRequestMessage registers this connection for
/// pruning point UTXO set override notifications.
///
/// This call is only available when this cryptixd was started with `--utxoindex`
///
/// See: NotifyPruningPointUTXOSetOverrideResponseMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyPruningPointUtxoSetOverrideRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyPruningPointUtxoSetOverrideResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// PruningPointUTXOSetOverrideNotificationMessage is sent whenever the UTXO index
/// resets due to pruning point change via IBD.
///
/// See NotifyPruningPointUTXOSetOverrideRequestMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PruningPointUtxoSetOverrideNotificationMessage {
}
/// StopNotifyingPruningPointUTXOSetOverrideRequestMessage unregisters this connection for
/// pruning point UTXO set override notifications.
///
/// This call is only available when this cryptixd was started with `--utxoindex`
///
/// See: PruningPointUTXOSetOverrideNotificationMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct StopNotifyingPruningPointUtxoSetOverrideRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct StopNotifyingPruningPointUtxoSetOverrideResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// BanRequestMessage bans the given ip.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BanRequestMessage {
    #[prost(string, tag="1")]
    pub ip: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BanResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// UnbanRequestMessage unbans the given ip.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UnbanRequestMessage {
    #[prost(string, tag="1")]
    pub ip: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UnbanResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// GetInfoRequestMessage returns info about the node.
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetInfoRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GetInfoResponseMessage {
    #[prost(string, tag="1")]
    pub p2p_id: ::prost::alloc::string::String,
    #[prost(uint64, tag="2")]
    pub mempool_size: u64,
    #[prost(string, tag="3")]
    pub server_version: ::prost::alloc::string::String,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EstimateNetworkHashesPerSecondRequestMessage {
    #[prost(uint32, tag="1")]
    pub window_size: u32,
    #[prost(string, tag="2")]
    pub start_hash: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct EstimateNetworkHashesPerSecondResponseMessage {
    #[prost(uint64, tag="1")]
    pub network_hashes_per_second: u64,
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// NotifyNewBlockTemplateRequestMessage registers this connection for
/// NewBlockTemplate notifications.
///
/// See: NewBlockTemplateNotificationMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyNewBlockTemplateRequestMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NotifyNewBlockTemplateResponseMessage {
    #[prost(message, optional, tag="1000")]
    pub error: ::core::option::Option<RpcError>,
}
/// NewBlockTemplateNotificationMessage is sent whenever a new updated block template is
/// available for miners.
///
/// See NotifyNewBlockTemplateRequestMessage
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NewBlockTemplateNotificationMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestAddressesMessage {
    #[prost(bool, tag="1")]
    pub include_all_subnetworks: bool,
    #[prost(message, optional, tag="2")]
    pub subnetwork_id: ::core::option::Option<SubnetworkId>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct AddressesMessage {
    #[prost(message, repeated, tag="1")]
    pub address_list: ::prost::alloc::vec::Vec<NetAddress>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct NetAddress {
    #[prost(int64, tag="1")]
    pub timestamp: i64,
    #[prost(bytes="vec", tag="3")]
    pub ip: ::prost::alloc::vec::Vec<u8>,
    #[prost(uint32, tag="4")]
    pub port: u32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct SubnetworkId {
    #[prost(bytes="vec", tag="1")]
    pub bytes: ::prost::alloc::vec::Vec<u8>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TransactionMessage {
    #[prost(uint32, tag="1")]
    pub version: u32,
    #[prost(message, repeated, tag="2")]
    pub inputs: ::prost::alloc::vec::Vec<TransactionInput>,
    #[prost(message, repeated, tag="3")]
    pub outputs: ::prost::alloc::vec::Vec<TransactionOutput>,
    #[prost(uint64, tag="4")]
    pub lock_time: u64,
    #[prost(message, optional, tag="5")]
    pub subnetwork_id: ::core::option::Option<SubnetworkId>,
    #[prost(uint64, tag="6")]
    pub gas: u64,
    #[prost(bytes="vec", tag="8")]
    pub payload: ::prost::alloc::vec::Vec<u8>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TransactionInput {
    #[prost(message, optional, tag="1")]
    pub previous_outpoint: ::core::option::Option<Outpoint>,
    #[prost(bytes="vec", tag="2")]
    pub signature_script: ::prost::alloc::vec::Vec<u8>,
    #[prost(uint64, tag="3")]
    pub sequence: u64,
    #[prost(uint32, tag="4")]
    pub sig_op_count: u32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Outpoint {
    #[prost(message, optional, tag="1")]
    pub transaction_id: ::core::option::Option<TransactionId>,
    #[prost(uint32, tag="2")]
    pub index: u32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TransactionId {
    #[prost(bytes="vec", tag="1")]
    pub bytes: ::prost::alloc::vec::Vec<u8>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ScriptPublicKey {
    #[prost(bytes="vec", tag="1")]
    pub script: ::prost::alloc::vec::Vec<u8>,
    #[prost(uint32, tag="2")]
    pub version: u32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TransactionOutput {
    #[prost(uint64, tag="1")]
    pub value: u64,
    #[prost(message, optional, tag="2")]
    pub script_public_key: ::core::option::Option<ScriptPublicKey>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BlockMessage {
    #[prost(message, optional, tag="1")]
    pub header: ::core::option::Option<BlockHeader>,
    #[prost(message, repeated, tag="2")]
    pub transactions: ::prost::alloc::vec::Vec<TransactionMessage>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BlockHeader {
    #[prost(uint32, tag="1")]
    pub version: u32,
    #[prost(message, repeated, tag="12")]
    pub parents: ::prost::alloc::vec::Vec<BlockLevelParents>,
    #[prost(message, optional, tag="3")]
    pub hash_merkle_root: ::core::option::Option<Hash>,
    #[prost(message, optional, tag="4")]
    pub accepted_id_merkle_root: ::core::option::Option<Hash>,
    #[prost(message, optional, tag="5")]
    pub utxo_commitment: ::core::option::Option<Hash>,
    #[prost(int64, tag="6")]
    pub timestamp: i64,
    #[prost(uint32, tag="7")]
    pub bits: u32,
    #[prost(uint64, tag="8")]
    pub nonce: u64,
    #[prost(uint64, tag="9")]
    pub daa_score: u64,
    #[prost(bytes="vec", tag="10")]
    pub blue_work: ::prost::alloc::vec::Vec<u8>,
    #[prost(message, optional, tag="14")]
    pub pruning_point: ::core::option::Option<Hash>,
    #[prost(uint64, tag="13")]
    pub blue_score: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BlockLevelParents {
    #[prost(message, repeated, tag="1")]
    pub parent_hashes: ::prost::alloc::vec::Vec<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct Hash {
    #[prost(bytes="vec", tag="1")]
    pub bytes: ::prost::alloc::vec::Vec<u8>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestBlockLocatorMessage {
    #[prost(message, optional, tag="1")]
    pub high_hash: ::core::option::Option<Hash>,
    #[prost(uint32, tag="2")]
    pub limit: u32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BlockLocatorMessage {
    #[prost(message, repeated, tag="1")]
    pub hashes: ::prost::alloc::vec::Vec<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestHeadersMessage {
    #[prost(message, optional, tag="1")]
    pub low_hash: ::core::option::Option<Hash>,
    #[prost(message, optional, tag="2")]
    pub high_hash: ::core::option::Option<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestNextHeadersMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DoneHeadersMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestRelayBlocksMessage {
    #[prost(message, repeated, tag="1")]
    pub hashes: ::prost::alloc::vec::Vec<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestTransactionsMessage {
    #[prost(message, repeated, tag="1")]
    pub ids: ::prost::alloc::vec::Vec<TransactionId>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TransactionNotFoundMessage {
    #[prost(message, optional, tag="1")]
    pub id: ::core::option::Option<TransactionId>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InvRelayBlockMessage {
    #[prost(message, optional, tag="1")]
    pub hash: ::core::option::Option<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct InvTransactionsMessage {
    #[prost(message, repeated, tag="1")]
    pub ids: ::prost::alloc::vec::Vec<TransactionId>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PingMessage {
    #[prost(uint64, tag="1")]
    pub nonce: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PongMessage {
    #[prost(uint64, tag="1")]
    pub nonce: u64,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VerackMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct VersionMessage {
    #[prost(uint32, tag="1")]
    pub protocol_version: u32,
    #[prost(uint64, tag="2")]
    pub services: u64,
    #[prost(int64, tag="3")]
    pub timestamp: i64,
    #[prost(message, optional, tag="4")]
    pub address: ::core::option::Option<NetAddress>,
    #[prost(bytes="vec", tag="5")]
    pub id: ::prost::alloc::vec::Vec<u8>,
    #[prost(string, tag="6")]
    pub user_agent: ::prost::alloc::string::String,
    #[prost(bool, tag="8")]
    pub disable_relay_tx: bool,
    #[prost(message, optional, tag="9")]
    pub subnetwork_id: ::core::option::Option<SubnetworkId>,
    #[prost(string, tag="10")]
    pub network: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RejectMessage {
    #[prost(string, tag="1")]
    pub reason: ::prost::alloc::string::String,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestPruningPointUtxoSetMessage {
    #[prost(message, optional, tag="1")]
    pub pruning_point_hash: ::core::option::Option<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PruningPointUtxoSetChunkMessage {
    #[prost(message, repeated, tag="1")]
    pub outpoint_and_utxo_entry_pairs: ::prost::alloc::vec::Vec<OutpointAndUtxoEntryPair>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct OutpointAndUtxoEntryPair {
    #[prost(message, optional, tag="1")]
    pub outpoint: ::core::option::Option<Outpoint>,
    #[prost(message, optional, tag="2")]
    pub utxo_entry: ::core::option::Option<UtxoEntry>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UtxoEntry {
    #[prost(uint64, tag="1")]
    pub amount: u64,
    #[prost(message, optional, tag="2")]
    pub script_public_key: ::core::option::Option<ScriptPublicKey>,
    #[prost(uint64, tag="3")]
    pub block_daa_score: u64,
    #[prost(bool, tag="4")]
    pub is_coinbase: bool,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestNextPruningPointUtxoSetChunkMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DonePruningPointUtxoSetChunksMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestIbdBlocksMessage {
    #[prost(message, repeated, tag="1")]
    pub hashes: ::prost::alloc::vec::Vec<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct UnexpectedPruningPointMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IbdBlockLocatorMessage {
    #[prost(message, optional, tag="1")]
    pub target_hash: ::core::option::Option<Hash>,
    #[prost(message, repeated, tag="2")]
    pub block_locator_hashes: ::prost::alloc::vec::Vec<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestIbdChainBlockLocatorMessage {
    #[prost(message, optional, tag="1")]
    pub low_hash: ::core::option::Option<Hash>,
    #[prost(message, optional, tag="2")]
    pub high_hash: ::core::option::Option<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IbdChainBlockLocatorMessage {
    #[prost(message, repeated, tag="1")]
    pub block_locator_hashes: ::prost::alloc::vec::Vec<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestAnticoneMessage {
    #[prost(message, optional, tag="1")]
    pub block_hash: ::core::option::Option<Hash>,
    #[prost(message, optional, tag="2")]
    pub context_hash: ::core::option::Option<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IbdBlockLocatorHighestHashMessage {
    #[prost(message, optional, tag="1")]
    pub highest_hash: ::core::option::Option<Hash>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct IbdBlockLocatorHighestHashNotFoundMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BlockHeadersMessage {
    #[prost(message, repeated, tag="1")]
    pub block_headers: ::prost::alloc::vec::Vec<BlockHeader>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestPruningPointAndItsAnticoneMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestNextPruningPointAndItsAnticoneBlocksMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BlockWithTrustedDataMessage {
    #[prost(message, optional, tag="1")]
    pub block: ::core::option::Option<BlockMessage>,
    #[prost(uint64, tag="2")]
    pub daa_score: u64,
    #[prost(message, repeated, tag="3")]
    pub daa_window: ::prost::alloc::vec::Vec<DaaBlock>,
    #[prost(message, repeated, tag="4")]
    pub ghostdag_data: ::prost::alloc::vec::Vec<BlockGhostdagDataHashPair>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DaaBlock {
    #[prost(message, optional, tag="3")]
    pub block: ::core::option::Option<BlockMessage>,
    #[prost(message, optional, tag="2")]
    pub ghostdag_data: ::core::option::Option<GhostdagData>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DaaBlockV4 {
    #[prost(message, optional, tag="1")]
    pub header: ::core::option::Option<BlockHeader>,
    #[prost(message, optional, tag="2")]
    pub ghostdag_data: ::core::option::Option<GhostdagData>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BlockGhostdagDataHashPair {
    #[prost(message, optional, tag="1")]
    pub hash: ::core::option::Option<Hash>,
    #[prost(message, optional, tag="2")]
    pub ghostdag_data: ::core::option::Option<GhostdagData>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct GhostdagData {
    #[prost(uint64, tag="1")]
    pub blue_score: u64,
    #[prost(bytes="vec", tag="2")]
    pub blue_work: ::prost::alloc::vec::Vec<u8>,
    #[prost(message, optional, tag="3")]
    pub selected_parent: ::core::option::Option<Hash>,
    #[prost(message, repeated, tag="4")]
    pub merge_set_blues: ::prost::alloc::vec::Vec<Hash>,
    #[prost(message, repeated, tag="5")]
    pub merge_set_reds: ::prost::alloc::vec::Vec<Hash>,
    #[prost(message, repeated, tag="6")]
    pub blues_anticone_sizes: ::prost::alloc::vec::Vec<BluesAnticoneSizes>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BluesAnticoneSizes {
    #[prost(message, optional, tag="1")]
    pub blue_hash: ::core::option::Option<Hash>,
    #[prost(uint32, tag="2")]
    pub anticone_size: u32,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct DoneBlocksWithTrustedDataMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PruningPointsMessage {
    #[prost(message, repeated, tag="1")]
    pub headers: ::prost::alloc::vec::Vec<BlockHeader>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct RequestPruningPointProofMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PruningPointProofMessage {
    #[prost(message, repeated, tag="1")]
    pub headers: ::prost::alloc::vec::Vec<PruningPointProofHeaderArray>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct PruningPointProofHeaderArray {
    #[prost(message, repeated, tag="1")]
    pub headers: ::prost::alloc::vec::Vec<BlockHeader>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct ReadyMessage {
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct BlockWithTrustedDataV4Message {
    #[prost(message, optional, tag="1")]
    pub block: ::core::option::Option<BlockMessage>,
    #[prost(uint64, repeated, tag="2")]
    pub daa_window_indices: ::prost::alloc::vec::Vec<u64>,
    #[prost(uint64, repeated, tag="3")]
    pub ghostdag_data_indices: ::prost::alloc::vec::Vec<u64>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct TrustedDataMessage {
    #[prost(message, repeated, tag="1")]
    pub daa_window: ::prost::alloc::vec::Vec<DaaBlockV4>,
    #[prost(message, repeated, tag="2")]
    pub ghostdag_data: ::prost::alloc::vec::Vec<BlockGhostdagDataHashPair>,
}
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CryptixdMessage {
    #[prost(oneof="cryptixd_message::Payload", tags="1, 2, 3, 5, 6, 10, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22, 25, 26, 27, 30, 31, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083")]
    pub payload: ::core::option::Option<cryptixd_message::Payload>,
}
/// Nested message and enum types in `CryptixdMessage`.
pub mod cryptixd_message {
    #[derive(Clone, PartialEq, ::prost::Oneof)]
    pub enum Payload {
        #[prost(message, tag="1")]
        Addresses(super::AddressesMessage),
        #[prost(message, tag="2")]
        Block(super::BlockMessage),
        #[prost(message, tag="3")]
        Transaction(super::TransactionMessage),
        #[prost(message, tag="5")]
        BlockLocator(super::BlockLocatorMessage),
        #[prost(message, tag="6")]
        RequestAddresses(super::RequestAddressesMessage),
        #[prost(message, tag="10")]
        RequestRelayBlocks(super::RequestRelayBlocksMessage),
        #[prost(message, tag="12")]
        RequestTransactions(super::RequestTransactionsMessage),
        #[prost(message, tag="13")]
        IbdBlock(super::BlockMessage),
        #[prost(message, tag="14")]
        InvRelayBlock(super::InvRelayBlockMessage),
        #[prost(message, tag="15")]
        InvTransactions(super::InvTransactionsMessage),
        #[prost(message, tag="16")]
        Ping(super::PingMessage),
        #[prost(message, tag="17")]
        Pong(super::PongMessage),
        #[prost(message, tag="19")]
        Verack(super::VerackMessage),
        #[prost(message, tag="20")]
        Version(super::VersionMessage),
        #[prost(message, tag="21")]
        TransactionNotFound(super::TransactionNotFoundMessage),
        #[prost(message, tag="22")]
        Reject(super::RejectMessage),
        #[prost(message, tag="25")]
        PruningPointUtxoSetChunk(super::PruningPointUtxoSetChunkMessage),
        #[prost(message, tag="26")]
        RequestIbdBlocks(super::RequestIbdBlocksMessage),
        #[prost(message, tag="27")]
        UnexpectedPruningPoint(super::UnexpectedPruningPointMessage),
        #[prost(message, tag="30")]
        IbdBlockLocator(super::IbdBlockLocatorMessage),
        #[prost(message, tag="31")]
        IbdBlockLocatorHighestHash(super::IbdBlockLocatorHighestHashMessage),
        #[prost(message, tag="33")]
        RequestNextPruningPointUtxoSetChunk(super::RequestNextPruningPointUtxoSetChunkMessage),
        #[prost(message, tag="34")]
        DonePruningPointUtxoSetChunks(super::DonePruningPointUtxoSetChunksMessage),
        #[prost(message, tag="35")]
        IbdBlockLocatorHighestHashNotFound(super::IbdBlockLocatorHighestHashNotFoundMessage),
        #[prost(message, tag="36")]
        BlockWithTrustedData(super::BlockWithTrustedDataMessage),
        #[prost(message, tag="37")]
        DoneBlocksWithTrustedData(super::DoneBlocksWithTrustedDataMessage),
        #[prost(message, tag="40")]
        RequestPruningPointAndItsAnticone(super::RequestPruningPointAndItsAnticoneMessage),
        #[prost(message, tag="41")]
        BlockHeaders(super::BlockHeadersMessage),
        #[prost(message, tag="42")]
        RequestNextHeaders(super::RequestNextHeadersMessage),
        #[prost(message, tag="43")]
        DoneHeaders(super::DoneHeadersMessage),
        #[prost(message, tag="44")]
        RequestPruningPointUtxoSet(super::RequestPruningPointUtxoSetMessage),
        #[prost(message, tag="45")]
        RequestHeaders(super::RequestHeadersMessage),
        #[prost(message, tag="46")]
        RequestBlockLocator(super::RequestBlockLocatorMessage),
        #[prost(message, tag="47")]
        PruningPoints(super::PruningPointsMessage),
        #[prost(message, tag="48")]
        RequestPruningPointProof(super::RequestPruningPointProofMessage),
        #[prost(message, tag="49")]
        PruningPointProof(super::PruningPointProofMessage),
        #[prost(message, tag="50")]
        Ready(super::ReadyMessage),
        #[prost(message, tag="51")]
        BlockWithTrustedDataV4(super::BlockWithTrustedDataV4Message),
        #[prost(message, tag="52")]
        TrustedData(super::TrustedDataMessage),
        #[prost(message, tag="53")]
        RequestIbdChainBlockLocator(super::RequestIbdChainBlockLocatorMessage),
        #[prost(message, tag="54")]
        IbdChainBlockLocator(super::IbdChainBlockLocatorMessage),
        #[prost(message, tag="55")]
        RequestAnticone(super::RequestAnticoneMessage),
        #[prost(message, tag="56")]
        RequestNextPruningPointAndItsAnticoneBlocks(super::RequestNextPruningPointAndItsAnticoneBlocksMessage),
        #[prost(message, tag="1001")]
        GetCurrentNetworkRequest(super::GetCurrentNetworkRequestMessage),
        #[prost(message, tag="1002")]
        GetCurrentNetworkResponse(super::GetCurrentNetworkResponseMessage),
        #[prost(message, tag="1003")]
        SubmitBlockRequest(super::SubmitBlockRequestMessage),
        #[prost(message, tag="1004")]
        SubmitBlockResponse(super::SubmitBlockResponseMessage),
        #[prost(message, tag="1005")]
        GetBlockTemplateRequest(super::GetBlockTemplateRequestMessage),
        #[prost(message, tag="1006")]
        GetBlockTemplateResponse(super::GetBlockTemplateResponseMessage),
        #[prost(message, tag="1007")]
        NotifyBlockAddedRequest(super::NotifyBlockAddedRequestMessage),
        #[prost(message, tag="1008")]
        NotifyBlockAddedResponse(super::NotifyBlockAddedResponseMessage),
        #[prost(message, tag="1009")]
        BlockAddedNotification(super::BlockAddedNotificationMessage),
        #[prost(message, tag="1010")]
        GetPeerAddressesRequest(super::GetPeerAddressesRequestMessage),
        #[prost(message, tag="1011")]
        GetPeerAddressesResponse(super::GetPeerAddressesResponseMessage),
        #[prost(message, tag="1012")]
        GetSelectedTipHashRequest(super::GetSelectedTipHashRequestMessage),
        #[prost(message, tag="1013")]
        GetSelectedTipHashResponse(super::GetSelectedTipHashResponseMessage),
        #[prost(message, tag="1014")]
        GetMempoolEntryRequest(super::GetMempoolEntryRequestMessage),
        #[prost(message, tag="1015")]
        GetMempoolEntryResponse(super::GetMempoolEntryResponseMessage),
        #[prost(message, tag="1016")]
        GetConnectedPeerInfoRequest(super::GetConnectedPeerInfoRequestMessage),
        #[prost(message, tag="1017")]
        GetConnectedPeerInfoResponse(super::GetConnectedPeerInfoResponseMessage),
        #[prost(message, tag="1018")]
        AddPeerRequest(super::AddPeerRequestMessage),
        #[prost(message, tag="1019")]
        AddPeerResponse(super::AddPeerResponseMessage),
        #[prost(message, tag="1020")]
        SubmitTransactionRequest(super::SubmitTransactionRequestMessage),
        #[prost(message, tag="1021")]
        SubmitTransactionResponse(super::SubmitTransactionResponseMessage),
        #[prost(message, tag="1022")]
        NotifyVirtualSelectedParentChainChangedRequest(super::NotifyVirtualSelectedParentChainChangedRequestMessage),
        #[prost(message, tag="1023")]
        NotifyVirtualSelectedParentChainChangedResponse(super::NotifyVirtualSelectedParentChainChangedResponseMessage),
        #[prost(message, tag="1024")]
        VirtualSelectedParentChainChangedNotification(super::VirtualSelectedParentChainChangedNotificationMessage),
        #[prost(message, tag="1025")]
        GetBlockRequest(super::GetBlockRequestMessage),
        #[prost(message, tag="1026")]
        GetBlockResponse(super::GetBlockResponseMessage),
        #[prost(message, tag="1027")]
        GetSubnetworkRequest(super::GetSubnetworkRequestMessage),
        #[prost(message, tag="1028")]
        GetSubnetworkResponse(super::GetSubnetworkResponseMessage),
        #[prost(message, tag="1029")]
        GetVirtualSelectedParentChainFromBlockRequest(super::GetVirtualSelectedParentChainFromBlockRequestMessage),
        #[prost(message, tag="1030")]
        GetVirtualSelectedParentChainFromBlockResponse(super::GetVirtualSelectedParentChainFromBlockResponseMessage),
        #[prost(message, tag="1031")]
        GetBlocksRequest(super::GetBlocksRequestMessage),
        #[prost(message, tag="1032")]
        GetBlocksResponse(super::GetBlocksResponseMessage),
        #[prost(message, tag="1033")]
        GetBlockCountRequest(super::GetBlockCountRequestMessage),
        #[prost(message, tag="1034")]
        GetBlockCountResponse(super::GetBlockCountResponseMessage),
        #[prost(message, tag="1035")]
        GetBlockDagInfoRequest(super::GetBlockDagInfoRequestMessage),
        #[prost(message, tag="1036")]
        GetBlockDagInfoResponse(super::GetBlockDagInfoResponseMessage),
        #[prost(message, tag="1037")]
        ResolveFinalityConflictRequest(super::ResolveFinalityConflictRequestMessage),
        #[prost(message, tag="1038")]
        ResolveFinalityConflictResponse(super::ResolveFinalityConflictResponseMessage),
        #[prost(message, tag="1039")]
        NotifyFinalityConflictsRequest(super::NotifyFinalityConflictsRequestMessage),
        #[prost(message, tag="1040")]
        NotifyFinalityConflictsResponse(super::NotifyFinalityConflictsResponseMessage),
        #[prost(message, tag="1041")]
        FinalityConflictNotification(super::FinalityConflictNotificationMessage),
        #[prost(message, tag="1042")]
        FinalityConflictResolvedNotification(super::FinalityConflictResolvedNotificationMessage),
        #[prost(message, tag="1043")]
        GetMempoolEntriesRequest(super::GetMempoolEntriesRequestMessage),
        #[prost(message, tag="1044")]
        GetMempoolEntriesResponse(super::GetMempoolEntriesResponseMessage),
        #[prost(message, tag="1045")]
        ShutDownRequest(super::ShutDownRequestMessage),
        #[prost(message, tag="1046")]
        ShutDownResponse(super::ShutDownResponseMessage),
        #[prost(message, tag="1047")]
        GetHeadersRequest(super::GetHeadersRequestMessage),
        #[prost(message, tag="1048")]
        GetHeadersResponse(super::GetHeadersResponseMessage),
        #[prost(message, tag="1049")]
        NotifyUtxosChangedRequest(super::NotifyUtxosChangedRequestMessage),
        #[prost(message, tag="1050")]
        NotifyUtxosChangedResponse(super::NotifyUtxosChangedResponseMessage),
        #[prost(message, tag="1051")]
        UtxosChangedNotification(super::UtxosChangedNotificationMessage),
        #[prost(message, tag="1052")]
        GetUtxosByAddressesRequest(super::GetUtxosByAddressesRequestMessage),
        #[prost(message, tag="1053")]
        GetUtxosByAddressesResponse(super::GetUtxosByAddressesResponseMessage),
        #[prost(message, tag="1054")]
        GetVirtualSelectedParentBlueScoreRequest(super::GetVirtualSelectedParentBlueScoreRequestMessage),
        #[prost(message, tag="1055")]
        GetVirtualSelectedParentBlueScoreResponse(super::GetVirtualSelectedParentBlueScoreResponseMessage),
        #[prost(message, tag="1056")]
        NotifyVirtualSelectedParentBlueScoreChangedRequest(super::NotifyVirtualSelectedParentBlueScoreChangedRequestMessage),
        #[prost(message, tag="1057")]
        NotifyVirtualSelectedParentBlueScoreChangedResponse(super::NotifyVirtualSelectedParentBlueScoreChangedResponseMessage),
        #[prost(message, tag="1058")]
        VirtualSelectedParentBlueScoreChangedNotification(super::VirtualSelectedParentBlueScoreChangedNotificationMessage),
        #[prost(message, tag="1059")]
        BanRequest(super::BanRequestMessage),
        #[prost(message, tag="1060")]
        BanResponse(super::BanResponseMessage),
        #[prost(message, tag="1061")]
        UnbanRequest(super::UnbanRequestMessage),
        #[prost(message, tag="1062")]
        UnbanResponse(super::UnbanResponseMessage),
        #[prost(message, tag="1063")]
        GetInfoRequest(super::GetInfoRequestMessage),
        #[prost(message, tag="1064")]
        GetInfoResponse(super::GetInfoResponseMessage),
        #[prost(message, tag="1065")]
        StopNotifyingUtxosChangedRequest(super::StopNotifyingUtxosChangedRequestMessage),
        #[prost(message, tag="1066")]
        StopNotifyingUtxosChangedResponse(super::StopNotifyingUtxosChangedResponseMessage),
        #[prost(message, tag="1067")]
        NotifyPruningPointUtxoSetOverrideRequest(super::NotifyPruningPointUtxoSetOverrideRequestMessage),
        #[prost(message, tag="1068")]
        NotifyPruningPointUtxoSetOverrideResponse(super::NotifyPruningPointUtxoSetOverrideResponseMessage),
        #[prost(message, tag="1069")]
        PruningPointUtxoSetOverrideNotification(super::PruningPointUtxoSetOverrideNotificationMessage),
        #[prost(message, tag="1070")]
        StopNotifyingPruningPointUtxoSetOverrideRequest(super::StopNotifyingPruningPointUtxoSetOverrideRequestMessage),
        #[prost(message, tag="1071")]
        StopNotifyingPruningPointUtxoSetOverrideResponse(super::StopNotifyingPruningPointUtxoSetOverrideResponseMessage),
        #[prost(message, tag="1072")]
        EstimateNetworkHashesPerSecondRequest(super::EstimateNetworkHashesPerSecondRequestMessage),
        #[prost(message, tag="1073")]
        EstimateNetworkHashesPerSecondResponse(super::EstimateNetworkHashesPerSecondResponseMessage),
        #[prost(message, tag="1074")]
        NotifyVirtualDaaScoreChangedRequest(super::NotifyVirtualDaaScoreChangedRequestMessage),
        #[prost(message, tag="1075")]
        NotifyVirtualDaaScoreChangedResponse(super::NotifyVirtualDaaScoreChangedResponseMessage),
        #[prost(message, tag="1076")]
        VirtualDaaScoreChangedNotification(super::VirtualDaaScoreChangedNotificationMessage),
        #[prost(message, tag="1077")]
        GetBalanceByAddressRequest(super::GetBalanceByAddressRequestMessage),
        #[prost(message, tag="1078")]
        GetBalanceByAddressResponse(super::GetBalanceByAddressResponseMessage),
        #[prost(message, tag="1079")]
        GetBalancesByAddressesRequest(super::GetBalancesByAddressesRequestMessage),
        #[prost(message, tag="1080")]
        GetBalancesByAddressesResponse(super::GetBalancesByAddressesResponseMessage),
        #[prost(message, tag="1081")]
        NotifyNewBlockTemplateRequest(super::NotifyNewBlockTemplateRequestMessage),
        #[prost(message, tag="1082")]
        NotifyNewBlockTemplateResponse(super::NotifyNewBlockTemplateResponseMessage),
        #[prost(message, tag="1083")]
        NewBlockTemplateNotification(super::NewBlockTemplateNotificationMessage),
    }
}
/// Generated client implementations.
pub mod p2p_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct P2pClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl P2pClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: std::convert::TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> P2pClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> P2pClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            P2pClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        pub async fn message_stream(
            &mut self,
            request: impl tonic::IntoStreamingRequest<Message = super::CryptixdMessage>,
        ) -> Result<
            tonic::Response<tonic::codec::Streaming<super::CryptixdMessage>>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/protowire.P2P/MessageStream",
            );
            self.inner.streaming(request.into_streaming_request(), path, codec).await
        }
    }
}
/// Generated client implementations.
pub mod rpc_client {
    #![allow(unused_variables, dead_code, missing_docs, clippy::let_unit_value)]
    use tonic::codegen::*;
    use tonic::codegen::http::Uri;
    #[derive(Debug, Clone)]
    pub struct RpcClient<T> {
        inner: tonic::client::Grpc<T>,
    }
    impl RpcClient<tonic::transport::Channel> {
        /// Attempt to create a new client by connecting to a given endpoint.
        pub async fn connect<D>(dst: D) -> Result<Self, tonic::transport::Error>
        where
            D: std::convert::TryInto<tonic::transport::Endpoint>,
            D::Error: Into<StdError>,
        {
            let conn = tonic::transport::Endpoint::new(dst)?.connect().await?;
            Ok(Self::new(conn))
        }
    }
    impl<T> RpcClient<T>
    where
        T: tonic::client::GrpcService<tonic::body::BoxBody>,
        T::Error: Into<StdError>,
        T::ResponseBody: Body<Data = Bytes> + Send + 'static,
        <T::ResponseBody as Body>::Error: Into<StdError> + Send,
    {
        pub fn new(inner: T) -> Self {
            let inner = tonic::client::Grpc::new(inner);
            Self { inner }
        }
        pub fn with_origin(inner: T, origin: Uri) -> Self {
            let inner = tonic::client::Grpc::with_origin(inner, origin);
            Self { inner }
        }
        pub fn with_interceptor<F>(
            inner: T,
            interceptor: F,
        ) -> RpcClient<InterceptedService<T, F>>
        where
            F: tonic::service::Interceptor,
            T::ResponseBody: Default,
            T: tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
                Response = http::Response<
                    <T as tonic::client::GrpcService<tonic::body::BoxBody>>::ResponseBody,
                >,
            >,
            <T as tonic::codegen::Service<
                http::Request<tonic::body::BoxBody>,
            >>::Error: Into<StdError> + Send + Sync,
        {
            RpcClient::new(InterceptedService::new(inner, interceptor))
        }
        /// Compress requests with the given encoding.
        ///
        /// This requires the server to support it otherwise it might respond with an
        /// error.
        #[must_use]
        pub fn send_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.send_compressed(encoding);
            self
        }
        /// Enable decompressing responses.
        #[must_use]
        pub fn accept_compressed(mut self, encoding: CompressionEncoding) -> Self {
            self.inner = self.inner.accept_compressed(encoding);
            self
        }
        pub async fn message_stream(
            &mut self,
            request: impl tonic::IntoStreamingRequest<Message = super::CryptixdMessage>,
        ) -> Result<
            tonic::Response<tonic::codec::Streaming<super::CryptixdMessage>>,
            tonic::Status,
        > {
            self.inner
                .ready()
                .await
                .map_err(|e| {
                    tonic::Status::new(
                        tonic::Code::Unknown,
                        format!("Service was not ready: {}", e.into()),
                    )
                })?;
            let codec = tonic::codec::ProstCodec::default();
            let path = http::uri::PathAndQuery::from_static(
                "/protowire.RPC/MessageStream",
            );
            self.inner.streaming(request.into_streaming_request(), path, codec).await
        }
    }
}
