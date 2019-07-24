# Docker Dynamic DNS Client for Digital Ocean

GitHub - https://github.com/fourthdimension/docker-dynamic-dns-digitalocean/
Author Site - https://www.the4d.ca/
Digital Ocean API - https://developers.digitalocean.com/documentation/v2/#domain-records

## Goal
For Domain Records (DNS) hosted with DigitalOcean, this script will allow you to update the IP address for an `A` record of a subdomain. Uses  Digital Ocean (v2) API.

## Docker
To build the Docker image, simply run Docker build:
```
docker build --no-cache --tag docker-dynamic-dns .
```

To use the image, use Docker run:
```
docker run -it --rm --name dydns-do -e DIGITALOCEAN_TOKEN="XXXXXXXXXXXXXXXXXXXXXX" -e DOMAIN="example.com" -e NAME="subdomain" docker-dynamic-dns-digitalocean
```

To use the image, and run Docker in the background, use the `-d` option:
```
docker run -it -d --rm --name dydns-do -e DIGITALOCEAN_TOKEN="XXXXXXXXXXXXXXXXXXXXXX" -e DOMAIN="example.com" -e NAME="subdomain" docker-dynamic-dns-digitalocean
```

## Environment Variables

- **DIGITALOCEAN_TOKEN**: Required. The username for the service.

- **DOMAIN**: Required. The domain name.

- **NAME**: Required. The subdomain name that you are updating.

- **INTERVAL**: [OPTIONAL] Specify in how often the script should call the update services in seconds. Default is 21600 seconds (6hrs).

Comment below if there are any issues or new features that you'd like to see.
