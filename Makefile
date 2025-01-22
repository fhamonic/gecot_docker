all:
	docker buildx inspect builder || docker buildx create --name builder --use
	docker buildx build -t gecot . --load
	docker run -it gecot

no-cache:
	docker buildx inspect builder || docker buildx create --name builder --use
	docker buildx build -t gecot . --load --no-cache
	docker run -it gecot