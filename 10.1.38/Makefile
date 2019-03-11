#
# Standard version level Makefile used to build a Docker container for Gearbox - https://github.com/gearboxworks/gearbox/
#


# Determine whether we use "nodeJS" or "JQ".
JSONCMD := $(shell jq -r '.organization' ./gearbox.json)
ifneq ($(JSONCMD),)
define GetFromPkg
$(shell jq -r ".$(1)" ./gearbox.json)
endef

define rawJSON
$(shell jq -Mc -r '' ./gearbox.json)
endef

else
JSONCMD := $(shell node -p "require('./gearbox.json').organization")
ifneq ($(JSONCMD),)
define GetFromPkg
$(shell node -p "require('./gearbox.json').$(1)")
endef

define rawJSON
$(shell node -p "require('./gearbox.json')")
endef

else
$(shell )

endif
endif

# Set global variables from container file.
ORGANIZATION	:= $(call GetFromPkg,organization)
NAME		:= $(call GetFromPkg,name)
VERSION		:= $(call GetFromPkg,version)
MAJORVERSION	:= $(call GetFromPkg,majorversion)
LATEST		:= $(call GetFromPkg,latest)
CLASS		:= $(call GetFromPkg,class)
NETWORK		:= $(call GetFromPkg,network)
PORTS		:= $(call GetFromPkg,ports)
VOLUMES		:= $(call GetFromPkg,volumes)
RESTART		:= $(call GetFromPkg,restart)
ARGS		:= $(call GetFromPkg,args)
STATE		:= $(call GetFromPkg,state)
ENV		:= $(call GetFromPkg,env)

OLDNAME		:= $(NAME)
ifeq ($(BUILD_TYPE),)
DOCKERFILE	:= DockerfileRuntime
BUILD_ARGS	:= --squash
NAME		:= $(NAME)
endif

IMAGE_NAME	?= $(ORGANIZATION)/$(NAME)
CONTAINER_NAME	?= $(NAME)-$(VERSION)
CONTAINER_JSON	?= '$(call rawJSON)'


# LOGFILE := $(NAME)-$(shell date +'%Y%m%d-%H%M%S').log
LOGFILE := $(NAME).log


.PHONY: build push release clean list inspect test create shell run start stop rm

################################################################################
# Image related commands.
default: all

all:
	@echo "clean		- Clean runtime container image."
	@echo "build		- Generate runtime container image."
	@echo "test		- Execute container unit tests."
	@echo "push		- Push runtime container image to DockerHub & GitHub."
	@echo ""
	@echo "release		- Do all of the above."
	@echo ""
	@echo "info		- Generate info from runtime container image."
	@echo "log		- Show log from last build."
	@echo "readme		- Show README.md."
	@echo ""
	@echo "Process:"
	@echo "	make clean"
	@echo "	make build"
	@echo "	make test"


################################################################################
info-base: $(DOCKERFILE)
	@make info BUILD_TYPE="base"

clean-base: $(DOCKERFILE)
	@make clean BUILD_TYPE="base"

build-base: $(DOCKERFILE)
	@make build-full BUILD_TYPE="base"

push-base: $(DOCKERFILE)
	@make push BUILD_TYPE="base"


################################################################################
info:
	@cat README.md

readme:
	@cat README.md


################################################################################
build: $(DOCKERFILE)
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	script -r -t 10 logs/$(LOGFILE) docker build -t $(IMAGE_NAME):$(VERSION) --label gearbox.json='$(call rawJSON)' --label container.organization="$(ORGANIZATION)" --label container.name="$(NAME)" --label container.version="$(VERSION)" --label container.majorversion="$(MAJORVERSION)" --label container.latest="$(LATEST)" --label container.class="$(CLASS)" --label container.network="$(NETWORK)" --label container.ports="$(PORTS)" --label container.volumes="$(VOLUMES)" --label container.restart="$(RESTART)" --label container.args="$(ARGS)" --label container.env="$(ENV)" --build-arg $(ENV)="$(VERSION)" $(BUILD_ARGS) -f $(DOCKERFILE) .
ifneq ($(MAJORVERSION),)
	docker tag $(IMAGE_NAME):$(VERSION) $(IMAGE_NAME):$(MAJORVERSION)
	@echo "Gearbox: Log file saved to \"logs/$(LOGFILE)\""
endif
endif


################################################################################
push:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	docker push $(IMAGE_NAME):$(VERSION)
ifneq ($(MAJORVERSION),)
	docker push $(IMAGE_NAME):$(MAJORVERSION)
endif
endif


################################################################################
release: build
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	@make clean-base
	@make build-base
	@make clean
	@make build
	@make push
endif


################################################################################
clean:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	-docker image rm -f $(IMAGE_NAME):$(VERSION)
ifneq ($(MAJORVERSION),)
	-docker image rm -f $(IMAGE_NAME):$(MAJORVERSION)
endif
	@rm -f logs/*.log
endif


################################################################################
list:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	-docker image ls $(IMAGE_NAME):$(VERSION)
ifneq ($(MAJORVERSION),)
	-docker image ls $(IMAGE_NAME):$(MAJORVERSION)
endif
endif


################################################################################
log:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	@script -dp logs/$(LOGFILE) | less -SinR
endif


################################################################################
inspect:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	docker image inspect $(IMAGE_NAME):$(VERSION)
endif


################################################################################
test:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	@echo "Unit tests not defined for this container."
	# make -k stop; make -k rm
	# make -k clean; make -k build; make -k create; make -k start
endif


################################################################################
# Container related commands.

create:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	docker create   --name $(CONTAINER_NAME) $(RESTART)  $(NETWORK) $(PORTS) $(ARGS) $(VOLUMES) $(IMAGE_NAME):$(VERSION)
endif


################################################################################
shell:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	docker run --rm --name $(CONTAINER_NAME)-shell -i -t $(NETWORK) $(PORTS) $(ARGS) $(VOLUMES) $(IMAGE_NAME):$(VERSION) /bin/bash -l
endif


################################################################################
run:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	docker run --rm --name $(CONTAINER_NAME)             $(NETWORK) $(PORTS) $(ARGS) $(VOLUMES) $(IMAGE_NAME):$(VERSION)
endif


################################################################################
start:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	docker start $(CONTAINER_NAME)
endif


################################################################################
stop:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	docker stop $(CONTAINER_NAME)
endif


################################################################################
rm:
ifeq ($(STATE),not_supported)
	@echo "Gearbox: Not supported yet."
	@exit 1
endif
ifeq ($(ORGANIZATION),)
	@echo "Gearbox: ERROR - You need to install JQ or NodeJS."
else
	docker container rm -f $(CONTAINER_NAME)
endif


################################################################################

