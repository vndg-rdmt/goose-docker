# goose-docker

Dockerized version of goose to run on server environments with
system minimun-dependecy requirements

## How to use

### Install
```sh
git clone git@github.com:vndg-rdmt/goose-docker.git
cd goose-docker

# may promt for password, because it installs
# /scripts/* to /usr/local/bin
make all
```

### Uninstall
```sh
make uninstall
```

### Usage

```sh
docker-goose-<up | down> \
    <driver> \
    <db string> \
    <migrations dir on host>
```

#### Example

To up migrations
```sh
docker-goose-down \
    postgrel \
    postgres://postgres:postgres@0.0.0.0:5432/postgres \
    ./migrations
```

To downgrade migrations
```sh
docker-goose-down \
    postgrel \
    postgres://postgres:postgres@0.0.0.0:5432/postgres \
    ./migrations
```
