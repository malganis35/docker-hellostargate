# docker-hellostargate

## Description

A simple helloworld app for docker adapted to the Stargate SG1 Theme

A simple nginx helloworld application that helps you learn docker image pulls. Runs on port :8888

This project is a fork of the helloworld project https://github.com/karthequian/docker-helloworld adapted to the Stargate SG1 Theme

## Installation

To pull this image:
```
docker pull malganis35/hellostargate
```

To run this image:
```
docker run -p 8888:80/tcp "malganis35/hellostargate:latest"
```

Dockerhub link: https://hub.docker.com/repository/docker/malganis35/hellostargate/

Github link: https://github.com/malganis35/docker-hellostargate


## Usage

Example of `docker-compose.yaml`file: 

```
services:
# For testing the proxy
  helloworld:
    image: 'malganis35/hellostargate:latest'
    container_name: helloworld
    restart: unless-stopped
    ports:
      - 8888:80/tcp
    healthcheck:
      test: ["CMD", "wget", "--spider", "-q", "http://localhost"]
      interval: 30s
      timeout: 10s
      retries: 5
      start_period: 5s
    networks:
      - frontend

networks:
  frontend:
    external: true
```

## Build and publish

1. Build the image

```
docker build -t malganis35/hellostargate:latest .
```

2. Test the image locally

```
docker run -p 8888:80 malganis35/hellostargate:latest
```

3. Login to Dockerhub (if not done): 

```
docker login
```

4. Push the image

```
docker push malganis35/hellostargate:latest
```