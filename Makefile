# defaul shell
SHELL = /bin/bash

# Rule "help"
.PHONY: help
.SILENT: help
help:
	echo "Use make [rule]"
	echo "Rules:"
	echo ""

docker-up:
	docker-compose up -d;

docker-down:
	docker-compose down;

docker-exec:
	docker exec -it codepix_app bash;

