.PHONY: all clean

all:
	docker buildx inspect builder || docker buildx create --name builder --use
	docker buildx build -t gecot . --load
	docker run -it gecot

clean:
	docker image rm -f gecot