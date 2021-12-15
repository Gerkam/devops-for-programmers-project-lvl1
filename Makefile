ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

copy_env:
	cp -n .env.example .env || true

server_up: copy_env
	docker-compose up

local_test: copy_env ci
	rm .env
