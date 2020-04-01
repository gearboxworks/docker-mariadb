![Gearbox](https://raw.githubusercontent.com/gearboxworks/gearboxworks.github.io/master/assets/images/gearbox-logo.png)


# mariadb Docker container service for [Gearbox](https://github.com/gearboxworks/)
This is the repository for the [mariadb](https://www.mariadb.org/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).


## Repository Info
GitHub commit: ![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-mariadb?style=flat-square)

GitHub release(latest): ![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-mariadb) ![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-mariadb?sort=semver) [![release-state](https://github.com/gearboxworks/docker-mariadb/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-mariadb/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service | GitHub Version | Docker Version | Docker Size | Docker Tags |
| ------- | -------------- | -------------- | ----------- | ----------- |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.0.38-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.0.38) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.0.38) | _([`10.0.38`, `10.0`](https://github.com/gearboxworks/docker-mariadb/blob/master/10.0/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.1.44-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.1.44) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.1.44) | _([`10.1.44`, `10.1`](https://github.com/gearboxworks/docker-mariadb/blob/master/10.1/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.2.31-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.2.31) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.2.31) | _([`10.2.31`, `10.2`](https://github.com/gearboxworks/docker-mariadb/blob/master/10.2/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.3.22-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.3.22) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.3.22) | _([`10.3.22`, `10.3`](https://github.com/gearboxworks/docker-mariadb/blob/master/10.3/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.4.12-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.4.12) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.4.12) | _([`10.4.12`, `10.4`](https://github.com/gearboxworks/docker-mariadb/blob/master/10.4/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.5.1-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.5.1) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.5.1) | _([`10.5.1`, `10.5`, `latest`](https://github.com/gearboxworks/docker-mariadb/blob/master/10.5/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-5.5.64-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/5.5.64) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/5.5.64) | _([`5.5.64`, `5.5`](https://github.com/gearboxworks/docker-mariadb/blob/master/5.5/DockerfileRuntime))_ |


## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/)
framework.
However, due to the flexability of Gearbox, it can be used outside of this framework.
You can either use it directly from DockerHub or GitHub.


## Method 1: GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/mariadb-docker.git`

### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.

`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.

`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.

`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.

### Runtime from GitHub repo
You can either build your container as above, or use it from DockerHub with these commands:

`make start` - Spin up a Docker container with the correct runtime configs.

`make stop` - Stop a Docker container.

`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`make shell` - Run a shell, (/bin/bash), within a Docker container.

`make rm` - Remove the Docker container.

`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


## Method 2: Docker Hub

### Setup from Docker Hub
A simple `docker pull gearbox/mariadb` will pull down the latest version.

### Starting
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name mariadb-latest --restart unless-stopped --network gearboxnet gearbox/mariadb:latest`

### Stopping
stop - Stop a Docker container.

`docker stop mariadb-latest`

### Remove container
rm - Remove the Docker container.

`docker container rm mariadb-latest`

### Run in foreground
run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name mariadb-latest --network gearboxnet gearbox/mariadb:latest`

### Run a shell
shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name mariadb-latest -i -t --network gearboxnet gearbox/mariadb:latest /bin/bash`

### SSH
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.

```
SSH_PORT="$(docker port mariadb-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```

