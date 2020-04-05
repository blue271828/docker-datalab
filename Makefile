# -*- coding: utf-8 -*-

PJTDIR := $(dir $(lastword $(MAKEFILE_LIST)))


.PHONY: lab
lab:
	@ docker-compose -f docker-compose.test.yml up lab

.PHONY: build
build:
	@ docker-compose -f docker-compose.test.yml build

.PHONY: test
test:
	@ docker-compose -f docker-compose.test.yml run sut
