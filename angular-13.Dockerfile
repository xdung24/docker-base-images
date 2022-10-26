FROM ubuntu:18.04 
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_16.x | bash \
    && apt-get install gcc g++ nodejs -yq make git

RUN npm install @angular/cli@13.3 -g
RUN npm update -g npm
