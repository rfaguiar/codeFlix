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

go-test:
	go test ./...;

create-protoc:
	protoc --go_out=application/grpc/pb \
	--go_opt=paths=source_relative \
	--go-grpc_out=application/grpc/pb \
	--go-grpc_opt=paths=source_relative \
	--proto_path=application/grpc/protofiles application/grpc/protofiles/*.proto;

#go-run:
#	go run cmd/main.go;

go-run-grpc:
	go run main.go grpc

go-run-all:
	go run main.go all

evans:
	evans -r repl;

#create cobra commandline interface
#cobra-init:
#	cobra init --pkg codepix;


