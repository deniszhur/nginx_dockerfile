FROM nginx:latest
ENV TZ=Europe/Moscow
RUN apt update && apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install tzdata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ >> /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata
COPY ./html/ /usr/share/nginx/html
EXPOSE 8080
ENTRYPOINT service nginx restart && bash
