docker buildx inspect builder || docker buildx create --name builder --use
docker buildx build -t gecot . --load --no-cache
docker run -it gecot
