# pipeline 
This is a Dockerized build environment that allows teams to build CD pipelines. It's made up of the following applications:
* Jenkins - Continuous Integration server
* SonarQube - static analysis code metrics tool
* MySQL (as a backing database for SonarQube)
* Nexus - repository for build artifacts
* Docker Registry - repository for images

## usage

This environment requires an Ubuntu environment (or Debian variant, but only tested on Ubuntu 16.04) and an account with sudo privileges.

1. `scp` the `host-pipeline` script to the host in any directory.
2. `chmod +x host-pipeline`
3. The script will create local directories to store data created by the applications in the environment. By default, the directories will be housed in `/apps/pipeline`.
4. The script will prompt the user for a MySQL root password to use for SonarQube's backing MySQL database.

NOTE: I've done virtually no work to secure these containers so please don't assume you can run them in any kind of production environment out of the box.
