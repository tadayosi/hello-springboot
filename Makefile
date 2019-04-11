docker-build:
	mvn clean install
	docker build -t tadayosi/hello-springboot .

docker-run:
	docker run -d -p 8080:8080 tadayosi/hello-springboot

docker-push:
	docker push tadayosi/hello-springboot

local-run:
	mvn spring-boot:run
