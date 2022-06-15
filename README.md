# nginx_dockerfile
run:<br>
docker run -dit --name test_nginx -p 8080:80 -v /home/ubuntu/nginx_dockerfile/html/:/usr/share/nginx/html image_from_dockerfile
