./wrk -t8 -c128 -d10s http://1.10.0.2:9188 --header "Connection: Close" -s scripts/big_small_requests.lua
