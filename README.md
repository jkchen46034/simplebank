# Simple_bank

A simple bank for transfer balances

## Installation

## Usage

## Contributing

## License

## Dependencies
1. Go
1. Postgres
1. Docker
1. Gin

## Tools
1. VS Code
1. SQL C
1. TablePlus
1. Docker
1. Migrate

## Notes
1. Database schema design with dbdiagram.io - jkchen46033@yahoo.com
1. Database tool - TablePlus
1. Install docker https://serverspace.io/support/help/how-to-install-docker-on-ubuntu-18-04-lts/#:~:text=Installing%20Docker%20on%20Ubuntu%2018.04&text=You%20can%20either%20install%20Docker,the%20latest%20version%20of%20docker.
1. Removing docker sudo permssion problem: sudo chmod 666 /var/run/docker.sock
1. pull postgres from docker hub: - docker puill postgres:12-alpine
1. run postgres container - docker run --name postgres12 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine
1. shell into postgres container - docker exec -it postgres12 psql -U root -d simple_bank
1. psql -U root -d simple_bank -h 127.0.0.1
1. log of postgres container - docker logs postgres12

