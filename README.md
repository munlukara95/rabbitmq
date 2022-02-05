# rabbitmq
H/A RabbitMQ Cluster on Docker Swarm

Commands
-------------

```bash

wget https://raw.githubusercontent.com/olgac/rabbitmq/master/docker-compose.yml
docker network create --driver=overlay --attachable prod

docker node update --label-add rabbitmq=true node-1
docker node update --label-add rabbitmq=true node-2
docker node update --label-add rabbitmq=true node-3
docker stack deploy -c docker-compose.yml rabbitmq

#docker run -d -p 9000:9000 --name portainer -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer
```

### Reference Documentation

For further reference, please consider the following sections:

* [HA RabbitMq Cluster Using Consul Base Discovery](https://medium.com/hepsiburadatech/implementing-highly-available-rabbitmq-cluster-on-docker-swarm-using-consul-based-discovery-45c4e7919634)
