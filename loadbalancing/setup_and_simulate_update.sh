docker network create lb_network
docker run --name lb --network lb_network --rm -d -p 80:8080 nginx_lb
docker run --name web1 --network lb_network --rm -d --env ID=1 simple_server
#sleep 60
docker run --name web1 --network lb_network --rm -d --env ID=2 simple_server
docker stop web1
sleep 120
docker stop lb
docker stop web2
docker network rm lb_network
