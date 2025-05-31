#!/usr/bin/env bash

. /hive/miners/custom/cryptix_miner_hive_sheet_v029/h-manifest.conf

stats_raw=$(grep -w "hashrate" "$CUSTOM_LOG_BASENAME.log" | tail -n 1)

maxDelay=120
time_now=$(date +%s)

datetime_rep=$(echo "$stats_raw" | awk '{print $1}' | tr -d '[]')
time_rep=$(date -d "$datetime_rep" +%s 2>/dev/null || echo 0)
diffTime=$(( time_now - time_rep ))
diffTime=${diffTime#-}  

if [ "$diffTime" -lt "$maxDelay" ]; then
    total_hashrate=$(echo "$stats_raw" | awk '{print $7}' | sed 's/[^0-9.]//g')
    if [[ $stats_raw == *"Ghash"* ]]; then
        total_hashrate=$(echo "$total_hashrate * 1000" | bc)
    fi

    gpu_stats=$(<"$GPU_STATS_JSON")
    readarray -t gpu_stats < <(jq --slurp -r -c '.[] | .busids, .brand, .temp, .fan | join(" ")' "$GPU_STATS_JSON" 2>/dev/null)
    busids=(${gpu_stats[0]})
    brands=(${gpu_stats[1]})
    temps=(${gpu_stats[2]})
    fans=(${gpu_stats[3]})
    gpu_count=${#busids[@]}

    hash_arr=()
    busid_arr=()
    fan_arr=()
    temp_arr=()

    if [ $(gpu-detect NVIDIA) -gt 0 ]; then
        BRAND_MINER="nvidia"
    elif [ $(gpu-detect AMD) -gt 0 ]; then
        BRAND_MINER="amd"
    else
        BRAND_MINER=""
    fi

    for (( i=0; i < gpu_count; i++ )); do
        [[ "${brands[i]}" != $BRAND_MINER ]] && continue
        if [[ "${busids[i]}" =~ ^([A-Fa-f0-9]+): ]]; then
            busid_arr+=($((16#${BASH_REMATCH[1]})))
        else
            busid_arr+=(0)
        fi
        temp_arr+=(${temps[i]})
        fan_arr+=(${fans[i]})
        gpu_raw=$(grep -w "Device #$i" "$CUSTOM_LOG_BASENAME.log" | tail -n 1)
        hashrate=$(echo "$gpu_raw" | awk '{print $(NF-1)}' | sed 's/[^0-9.]//g')
        if [[ $gpu_raw == *"Ghash"* ]]; then
            hashrate=$(echo "$hashrate * 1000" | bc)
        fi
        hash_arr+=($hashrate)
    done

    hash_json=$(printf '%s\n' "${hash_arr[@]}" | jq -cs '.')
    bus_numbers=$(printf '%s\n' "${busid_arr[@]}"  | jq -cs '.')
    fan_json=$(printf '%s\n' "${fan_arr[@]}"  | jq -cs '.')
    temp_json=$(printf '%s\n' "${temp_arr[@]}"  | jq -cs '.')

    uptime=$(( $(date +%s) - $(stat -c %Y "$CUSTOM_CONFIG_FILENAME") ))

    stats=$(jq -nc \
        --argjson hs "$hash_json" \
        --arg ver "$CUSTOM_VERSION" \
        --argjson bus_numbers "$bus_numbers" \
        --argjson fan "$fan_json" \
        --argjson temp "$temp_json" \
        --arg uptime "$uptime" \
        --arg ths "$total_hashrate" \
       '{hs: $hs, hs_units: "khs", algo: "cryptix_ox8", ver: $ver, uptime: ($uptime|tonumber), bus_numbers: $bus_numbers, temp: $temp, fan: $fan}'
    khs=$total_hashrate
else
    khs=0
    stats="null"
fi

echo "$stats"
