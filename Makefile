.PHONY: build

build:
	sam build

build-AuthFunction:
	GOOS=linux GOARCH=amd64 go build -o main ../KoH_service_reg/cmd/main.go
	cp ./main $(ARTIFACTS_DIR)/

build-RegFunction:
	GOOS=linux GOARCH=amd64 go build -o main ../KoH_service_auth/cmd/main.go
	cp ./main $(ARTIFACTS_DIR)/

build-RoomFunction:
	GOOS=linux GOARCH=amd64 go build -o main ../KoH_service_room/cmd/main.go
	cp ./main $(ARTIFACTS_DIR)/