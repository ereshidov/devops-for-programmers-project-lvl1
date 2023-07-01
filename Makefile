dev:
	docker-compose up
ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
build:
	docker-compose -f docker-compose.yml build app
push:
	docker-compose -f docker-compose.yml push app
docker-hub-start:
	docker run -p 8080:8080 edemreshidov/devops-for-programmers-project-lvl1 npm run dev