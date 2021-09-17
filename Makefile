.PHONY: build
build:
	docker build --tag=minecraft-server .

.PHONY: run
run: build
	mkdir -p data
	docker run -it --rm -v $(CURDIR)/data:/data \
		-p 0.0.0.0:25565:25565 -p 0.0.0.0:19132:19132/udp \
		--name minecraft minecraft-server
