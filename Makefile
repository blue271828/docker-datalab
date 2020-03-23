# -*- coding: utf-8 -*-

PJTDIR := $(dir $(lastword $(MAKEFILE_LIST)))


.PHONY: build
build:
	@ docker-compose -f docker-compose.test.yml build

.PHONY: test
test:
	@ docker-compose -f docker-compose.test.yml run sut
