#!/bin/bash

#sudo docker exec bgp_b1_1 apt-get install traceroute
#sudo docker exec bgp_b2_1 apt-get install traceroute
#sudo docker exec bgp_b3_1 apt-get install traceroute
#sudo docker exec bgp_r3_1 apt-get install traceroute
#sudo docker exec bgp_r4_1 apt-get install traceroute
#sudo docker exec bgp_r5_1 apt-get install traceroute
#sudo docker exec bgp_r6_1 apt-get install traceroute
#sudo docker exec bgp_r7_1 apt-get install traceroute
#sudo docker exec bgp_r8_1 apt-get install traceroute
#sudo docker exec bgp_r9_1 apt-get install traceroute
#sudo docker exec bgp_h11_1 apt-get install traceroute
#sudo docker exec bgp_h12_1 apt-get install traceroute
#sudo docker exec bgp_h13_1 apt-get install traceroute
#sudo docker exec bgp_h14_1 apt-get install traceroute

#echo Traceroute instalado.

sudo docker exec bgp_h11_1 ip route del default
sudo docker exec bgp_h12_1 ip route del default
sudo docker exec bgp_h13_1 ip route del default
sudo docker exec bgp_h14_1 ip route del default
sudo docker exec bgp_r3_1 ip route del default
sudo docker exec bgp_r4_1 ip route del default
sudo docker exec bgp_r5_1 ip route del default
sudo docker exec bgp_r6_1 ip route del default
sudo docker exec bgp_r7_1 ip route del default
sudo docker exec bgp_r8_1 ip route del default
sudo docker exec bgp_r9_1 ip route del default
sudo docker exec bgp_b1_1 ip route del default
sudo docker exec bgp_b2_1 ip route del default
sudo docker exec bgp_b3_1 ip route del default

echo Default Gateways IPv4 borrados.

sudo docker exec bgp_r3_1 ip -6 route del default
sudo docker exec bgp_r4_1 ip -6 route del default
sudo docker exec bgp_r5_1 ip -6 route del default
sudo docker exec bgp_r6_1 ip -6 route del default
sudo docker exec bgp_r7_1 ip -6 route del default
sudo docker exec bgp_r8_1 ip -6 route del default
sudo docker exec bgp_r9_1 ip -6 route del default
sudo docker exec bgp_b1_1 ip -6 route del default
sudo docker exec bgp_b2_1 ip -6 route del default
sudo docker exec bgp_b3_1 ip -6 route del default
sudo docker exec bgp_h11_1 ip -6 route del default
sudo docker exec bgp_h12_1 ip -6 route del default
sudo docker exec bgp_h13_1 ip -6 route del default
sudo docker exec bgp_h14_1 ip -6 route del default

echo Default Gateways IPv6 borrados.

docker exec -it bgp_h11_1 ip -6 route add default via 2001:5555:1111::5
docker exec -it bgp_h12_1 ip -6 route add default via 2001:6666:1122::6
docker exec -it bgp_h13_1 ip -6 route add default via 2001:7777:1133::7
docker exec -it bgp_h14_1 ip -6 route add default via 2001:8888:1144::8
docker exec -it bgp_r3_1 ip -6 route add default via 2001:1111:3333::11
docker exec -it bgp_r4_1 ip -6 route add default via 2001:2222:4444::21
docker exec -it bgp_r5_1 ip -6 route add default via 2001:1111:5555::11
docker exec -it bgp_r6_1 ip -6 route add default via 2001:2222:6666::21
docker exec -it bgp_r7_1 ip -6 route add default via 2001:1111:7777::11
docker exec -it bgp_r8_1 ip -6 route add default via 2001:2222:8888::21
docker exec -it bgp_r9_1 ip -6 route add default via 2001:3333:9999::39

echo Default Gateways IPv6 configurados.
