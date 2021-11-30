test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

copy_env:
	cp -n .env.example .env || true

server_up:
	docker-compose up

ci: copy_env test
	rm .env