![Gearbox](https://gearboxworks.github.io/assets/images/gearbox-logo.png)


# mariadb Docker container service for [Gearbox](https://github.com/gearboxworks/)
This is the repository for the [mariadb](https://www.mariadb.org/) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).


## Repository Info
GitHub commit: ![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-mariadb?style=flat-square)

GitHub release(latest): ![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-mariadb) ![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-mariadb?sort=semver) [![release-state](https://github.com/gearboxworks/docker-mariadb/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-mariadb/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service | GitHub Version | Docker Version | Docker Size | Docker Tags |
| ------- | -------------- | -------------- | ----------- | ----------- |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.0.38-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.0.38)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.0.38)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | _([`10.0.38`, `10.0`](https://github.com/gearboxworks/docker-mariadb/blob/master/versions/10.0.38/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.1.44-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.1.44)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.1.44)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | _([`10.1.44`, `10.1`](https://github.com/gearboxworks/docker-mariadb/blob/master/versions/10.1.44/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.2.31-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.2.31)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.2.31)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | _([`10.2.31`, `10.2`](https://github.com/gearboxworks/docker-mariadb/blob/master/versions/10.2.31/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.3.22-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.3.22)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.3.22)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | _([`10.3.22`, `10.3`](https://github.com/gearboxworks/docker-mariadb/blob/master/versions/10.3.22/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.4.12-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.4.12)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.4.12)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | _([`10.4.12`, `10.4`](https://github.com/gearboxworks/docker-mariadb/blob/master/versions/10.4.12/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-10.5.2-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/10.5.2)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/10.5.2)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | _([`10.5.2`, `10.5`, `latest`](https://github.com/gearboxworks/docker-mariadb/blob/master/versions/10.5.2/DockerfileRuntime))_ |
| [mariadb](https://www.mariadb.org/) | ![mariadb](https://img.shields.io/badge/mariadb-5.5.64-green.svg) | [![Docker Version)](https://img.shields.io/docker/v/gearboxworks/mariadb/5.5.64)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mariadb/5.5.64)](https://hub.docker.com/repository/docker/gearboxworks/mariadb) | _([`5.5.64`, `5.5`](https://github.com/gearboxworks/docker-mariadb/blob/master/versions/5.5.64/DockerfileRuntime))_ |


## About this container.
A driving force behind [Gearbox](https://github.com/gearboxworks/) is to improve the user experience using software, and especially for software developers.

Our vision is to empower developers and other software users to quickly and easily use almost any version of a software service, command line tool or API without without first getting bogged down with installation and configuration.

In other words, our vision for [Gearbox](https://github.com/gearboxworks/) users is that software "**just works**".


## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/) framework.
However, due to the flexability of Gearbox, it can be used outside of this framework.

There are three methods:

## Method 1: Using launch
`launch` is a tool specifically designed to interact with a Gearbox Docker container.

It provides three important functional areas, without any Docker container learning curve:
- Allows control over Gearbox Docker containers: stop, start, create, remove.
- Build, update, modify and release Docker images.
- Acts as a proxy for interactive commands within a Gearbox Docker container.

It also provides a functional SSH daemon for connecting remotely as well as a standard set of common tools and utilities.

Further `launch` documentation can be [found here](https://github.com/gearboxworks/docker-template/blob/master/LAUNCH.md).

### Download launch
`launch` is currently in beta testing and is included along with all Gearbox Docker repos.
Once out of beta, it will be included within the Gearbox installation package.

For now, simply download the standalone `launch` binary for your O/S.
- [Mac OSX 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Darwin/launch)
- [Linux 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Linux/launch)
- [Windows 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Windows/launch)


### Running launch
There are many ways to call launch, either directly or indirectly.
Additionally, all host environment variables will be imported into the container seamlessly.
This allows a devloper to try multiple versions of software as though they were installed locally.

If a container is missing, it will be downloaded and created. Multiple versions can co-exist.

Install, create, and start the mariadb Gearbox container.

`./launch install mariadb`

Create, and start the mariadb Gearbox container. Run a shell.

`./launch shell mariadb`

Create, and start the mariadb Gearbox container with version 5.5.64 and run a shell.

`./launch shell mariadb:5.5.64`

`./launch shell mariadb:5.5.64 ls -l`

`./launch shell mariadb:5.5.64 ps -eaf`


### Available commands
If mariadb is symlinked to `launch`, then the Gearbox container will be determined automatically and the default command will be run.
All available commands for a Gearbox container will be automatically symlinked upon installation.

`./mariadb`

Running mariadb Gearbox container default command. If a container has a default interactive command, arguments can be supplied without specifying that command.

`./mariadb -flag1 -flag2 variable`

`./launch mariadb:5.5.64 -flag1 -flag2 variable`

Gearbox containers may have multiple executables that can be run. The mariadb Gearbox container has the following available commands:
- The default command will execute `/usr/bin/mariadb` within the container.
- `mariabackup` - will execute `/usr/bin/mariabackup` within the container.
- `mariadb` - will execute `/usr/bin/mariadb` within the container.
- `mariadb-access` - will execute `/usr/bin/mariadb-access` within the container.
- `mariadb-admin` - will execute `/usr/bin/mariadb-admin` within the container.
- `mariadb-analyze` - will execute `/usr/bin/mariadb-analyze` within the container.
- `mariadb-backup` - will execute `/usr/bin/mariadb-backup` within the container.
- `mariadb-binlog` - will execute `/usr/bin/mariadb-binlog` within the container.
- `mariadb-check` - will execute `/usr/bin/mariadb-check` within the container.
- `mariadb-conv` - will execute `/usr/bin/mariadb-conv` within the container.
- `mariadb-convert-table-format` - will execute `/usr/bin/mariadb-convert-table-format` within the container.
- `mariadb-dump` - will execute `/usr/bin/mariadb-dump` within the container.
- `mariadb-dumpslow` - will execute `/usr/bin/mariadb-dumpslow` within the container.
- `mariadb-find-rows` - will execute `/usr/bin/mariadb-find-rows` within the container.
- `mariadb-fix-extensions` - will execute `/usr/bin/mariadb-fix-extensions` within the container.
- `mariadb-hotcopy` - will execute `/usr/bin/mariadb-hotcopy` within the container.
- `mariadb-import` - will execute `/usr/bin/mariadb-import` within the container.
- `mariadb-install-db` - will execute `/usr/bin/mariadb-install-db` within the container.
- `mariadb-optimize` - will execute `/usr/bin/mariadb-optimize` within the container.
- `mariadb-plugin` - will execute `/usr/bin/mariadb-plugin` within the container.
- `mariadb-repair` - will execute `/usr/bin/mariadb-repair` within the container.
- `mariadb-secure-installation` - will execute `/usr/bin/mariadb-secure-installation` within the container.
- `mariadb-service-convert` - will execute `/usr/bin/mariadb-service-convert` within the container.
- `mariadb-setpermission` - will execute `/usr/bin/mariadb-setpermission` within the container.
- `mariadb-show` - will execute `/usr/bin/mariadb-show` within the container.
- `mariadb-slap` - will execute `/usr/bin/mariadb-slap` within the container.
- `mariadb-tzinfo-to-sql` - will execute `/usr/bin/mariadb-tzinfo-to-sql` within the container.
- `mariadb-upgrade` - will execute `/usr/bin/mariadb-upgrade` within the container.
- `mariadb-waitpid` - will execute `/usr/bin/mariadb-waitpid` within the container.
- `mariadbd-multi` - will execute `/usr/bin/mariadbd-multi` within the container.
- `mariadbd-safe` - will execute `/usr/bin/mariadbd-safe` within the container.
- `mariadbd-safe-helper` - will execute `/usr/bin/mariadbd-safe-helper` within the container.


### Remote connection
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.
To show what ports are exported to the host, use the following command.

`./launch list mariadb`


## Method 2: GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/docker-mariadb.git`

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


## Method 3: Docker Hub

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

Either use `launch` above or discover the port and SSH directly.


```
SSH_PORT="$(docker port mariadb-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```

