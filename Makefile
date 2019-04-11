docker-build:
	mvn clean package -DskipTests
	cp target/hello-springboot.jar .
	docker build -t tadayosi/hello-springboot .

docker-run:
	docker run -d -p 8080:8080 tadayosi/hello-springboot

docker-push:
	docker push tadayosi/hello-springboot

local-run:
	mvn spring-boot:run
