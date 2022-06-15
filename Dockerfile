FROM nginx:latest
RUN apt update && apt upgrade -y
COPY ./html/ /usr/share/nginx/html
EXPOSE 8080
ENTRYPOINT service nginx restart && bash
