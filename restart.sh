docker kill nginx
docker kill docker_ui
docker rm docker_ui
docker rm nginx
docker run -d -p 9000:9000 --restart=always --name docker_ui --privileged -v /var/run/docker.sock:/var/run/docker.sock dockerui/dockerui
docker run -p 80:80 --restart=always --name nginx -v ./nginx:/etc/nginx:ro -d nginx