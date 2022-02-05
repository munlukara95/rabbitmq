#!/bin/bash -e
docker image build -t via/rabbitmq:3.9.13-management .
docker push via/rabbitmq:3.9.13-management
