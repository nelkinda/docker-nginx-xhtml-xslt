.PHONY: start
start:
	docker run \
	    -d \
	    -p 8080:80 \
	    --name my-nginx \
	    -v $(CURDIR)/nginx.conf:/etc/nginx/nginx.conf:ro \
	    -v $(CURDIR)/xslt:/usr/share/nginx/xslt:ro \
	    -v $(CURDIR)/htdocs:/usr/share/nginx/html:ro \
	    nginx

.PHONY: stop
stop:
	-docker stop my-nginx
	-docker rm my-nginx

.PHONY: restart
restart: stop start

.PHONY: login
login:
	docker exec -it my-nginx bash

.PHONY: reload
reload:
	docker exec my-nginx service nginx reload

.PHONY: logs
logs:
	docker logs my-nginx

-include User.mak
