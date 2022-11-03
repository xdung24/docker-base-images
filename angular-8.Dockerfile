FROM ubuntu:18.04 
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash \
    && apt-get install gcc g++ nodejs -yq make git

RUN npm update -g npm
RUN npm install @angular-devkit/core@8.3.29 -g
RUN npm install @angular-devkit/build-angular@0.803.29 -g
RUN npm install @angular/cli@8.3.29 -g