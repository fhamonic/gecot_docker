# ![GECOT](misc/gecot_title.png)

Dockerfile for compiling GECOT (https://github.com/fhamonic/gecot)

## Requirements (Make, Docker and its buildx plugin)

### Linux

    sudo apt update && sudo apt install make docker docker-buildx-plugin

### Windows

Download and install Docker : https://docs.docker.com/desktop/setup/install/windows-install/

### MacOS

    brew install make docker docker-buildx

## Clone and run the Docker container with

    git clone https://github.com/fhamonic/gecot_docker.git
    cd gecot_docker
    make

## Then run GECOT with

    /gecot/build/gecot_optimize --help
