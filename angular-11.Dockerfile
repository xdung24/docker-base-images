FROM ubuntu:18.04 
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash \
    && apt-get install gcc g++ nodejs -yq make git

RUN npm update -g npm
RUN npm install @angular-devkit/core11.2.19 -g
RUN npm install @angular-devkit/build-angular@0.1102.19 -g
RUN npm install @angular/cli@11.2.19 -g