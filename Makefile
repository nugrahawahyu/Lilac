.PHONY: build deploy

REGISTRY  = iredium
PROJECT   = lilac
VERSION   = latest
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

all: update dep build deploy

dep:
	npm install

dev:
	docker-compose up --force-recreate

deploy:
	docker-compose -f deploy/docker-compose.yml --project-name "$(PROJECT)" up -d

update:
	git pull origin master

build:
	npm run build
	$(foreach var, $(SERVICES), docker build -t $(REGISTRY)/$(PROJECT)/$(var):$(VERSION) -f ./deploy/$(var)/Dockerfile .;)
