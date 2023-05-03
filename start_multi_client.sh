sudo chrt -r 1 taskset -c 0-3 ./wrk -t4 -c32 -d10s http://1.10.0.2:4443/64 --latency | sudo tee out.txt &
sudo chrt -r 1 taskset -c 4-7 ./wrk -t4 -c32 -d10s http://1.10.0.2:4443/64000000 --latency | sudo tee out1.txt  
