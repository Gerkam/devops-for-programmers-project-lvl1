test:
# 	docker-compose -f docker-compose.yml run --rm app npm ci
	docker-compose -f docker-compose.yml up --abort-on-container-exit
server_up:
	docker-compose up