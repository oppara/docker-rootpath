SHELL=/bin/bash

.PHONY: up
up:
	docker-compose up -d --build

.PHONY: down
down:
	docker-compose down

.PHONY: open
open:
	open http://localhost:8080

.PHONY: stderr
stderr:
	docker logs docker_rootpath -f 1>/dev/null

.PHONY: stdout
stdout:
	docker logs docker_rootpath -f 2>/dev/null

.PHONY: logs
logs:
	docker logs docker_rootpath -f
