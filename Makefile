.PHONY: build deploy

PROJECT   = myblog
VERSION   = latest
REGISTRY  = nugraha
DDIR      = deploy
ODIR      = $(DDIR)/_output
DIRS      = $(shell cd deploy && ls -d */ | grep -v "_")
SERVICES ?= $(DIRS:/=)
DEFENV    = production canary sandbox
ENV      ?= $(DEFENV)

DATE       = $(shell date +'%Y%m%d-%H%M%S')
DEPLOY_TAG = deploy-$(ENV)-$(DATE)

$(ODIR):
	mkdir -p $(ODIR)

all: build deploy

deploy:
	docker-compose -f deploy/docker-compose.yml up -d

build:
	npm run build
	$(foreach var, $(SERVICES), docker build -t $(REGISTRY)/$(PROJECT)/$(var):$(VERSION) -f ./deploy/$(var)/Dockerfile .;)
