# Builds and pushes the Micro-Manager Docker build images.
#
# Based on:
# https://container-solutions.com/tagging-docker-images-the-right-way/
#
# Kyle M. Douglass, 2019
# kyle.m.douglass@gmail.com
#

NAME   := kmdouglass/mm-docker
TAG    := `basename "$(CURDIR)"`
COMMIT := $$(git log -1 --pretty=%H)
IMG    := ${NAME}:${TAG}-${COMMIT}
LATEST := ${NAME}:${TAG}

build:
	@docker build -t ${IMG} .
	@docker tag ${IMG} ${LATEST}

push:
	@docker push ${NAME}
