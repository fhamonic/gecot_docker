# ![GECOT](misc/gecot_title.png)

Dockerfile for compiling GECOT (https://github.com/fhamonic/gecot)

## Requirements (Make, Docker and its buildx plugin)

### Linux

    sudo apt update && sudo apt install make docker docker-buildx-plugin

### MacOS

    brew install make docker docker-buildx

## Create and run the Docker container with

    make

## Then run GECOT with

    /gecot/build/gecot_optimize --help