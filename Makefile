TAG=remko/rust-x86_64-linux-musl

.PHONY: all
all:
	docker build -t $(TAG) .

.PHONY: push
push: all
	docker push $(TAG) 
