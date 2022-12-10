FROM ubuntu:20.04
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_16.x | bash \
    && apt-get install gcc g++ nodejs -yq make git

RUN npm update -g npm
RUN npm install @angular-devkit/core@14.2.8 -g
RUN npm install @angular-devkit/build-angular@14.2.8 -g
RUN npm install @angular/cli@14.2 -g
