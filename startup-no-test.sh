#!/bin/bash

echo "Building eureka-server-app"
cd eureka-server-app/
gradle build -x test

echo "Building stock-assistant-portfolio-service"
cd ../stock-assistant-portfolio-service/
gradle build -x test

echo "Building stock-assistant-service"
cd ../stock-assistant-service/
gradle build -x test

echo "Starting containers with docker compose"
cd ..
docker-compose up --build