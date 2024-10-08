proto:
	rm pb/*.go
	protoc --proto_path=proto proto/*.proto --go_out=pb --go_opt=paths=source_relative  --go-grpc_out=pb --go-grpc_opt=paths=source_relative

clean:
	rm pb/*.go

run:
	go run main.go

test:
	go test ./... -cover -race

server:
	go run cmd/server/main.go -port 8080

server1:
	go run cmd/server/main.go -port 50051

server2:
	go run cmd/server/main.go -port 50052

client:
	go run cmd/client/main.go -address 0.0.0.0:8080

.PHONY: proto test client server