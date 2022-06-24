USER=aliyildiz
IMAGE=dind-jenkins-agent:v1

.PHONY: build push

default: build

build:
	docker build -t $(USER)/$(IMAGE) .

debug:
	docker run -it $(USER)/$(IMAGE) bash

push:
	docker push $(USER)/$(IMAGE)
