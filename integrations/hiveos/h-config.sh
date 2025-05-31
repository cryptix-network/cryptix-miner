[[ -e /hive/custom ]] && . /hive/custom/cryptix_miner_hive_sheet_v029/h-manifest.conf
[[ -e /hive/miners/custom ]] && . /hive/miners/custom/cryptix_miner_hive_sheet_v029/h-manifest.conf

conf=""
conf+=" --cryptixd-address=$CUSTOM_URL --mining-address $CUSTOM_TEMPLATE"

[[ ! -z $CUSTOM_USER_CONFIG ]] && conf+=" $CUSTOM_USER_CONFIG"

echo "$conf"
echo "$conf" > "$CUSTOM_CONFIG_FILENAME"
