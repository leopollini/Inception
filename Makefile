all:
	@mkdir -p /home/leonardo/data/wordpress
	@mkdir -p /home/leonardo/data/mariadb
	@docker-compose -f ./srcs/docker-compose.yml up

down:
	@docker-compose -f ./srcs/docker-compose.yml down

re:
	@mkdir -p /home/leonardo/data/wordpress
	@mkdir -p /home/leonardo/data/mariadb
	@docker-compose -f srcs/docker-compose.yml up --build

clean:
	@docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);\
	rm -rf /home/leonardo/data/mariadb
	rm -rf /home/leonardo/data/wordpress

.PHONY: all re down clean
