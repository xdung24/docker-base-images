FROM node:slim
ENV COMPOSER_PROCESS_TIMEOUT=3600
ENV DEBIAN_FRONTEND=noninteractive
ENV P3XRS_DOCKER_HOME=/settings
EXPOSE 7843
RUN npm -g --unsafe-perm install p3x-redis-ui
CMD p3x-redis
