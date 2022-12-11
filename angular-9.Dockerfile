FROM ubuntu:18.04 
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash \
    && apt-get install gcc g++ nodejs -yq make git
RUN apt-get install -yq nano vim

RUN npm update -g npm
RUN npm install @angular-devkit/core@9.1.15 -g
RUN npm install @angular-devkit/build-angular@0.901.15 -g
RUN npm install @angular/cli@9.1.15 -g

ENTRYPOINT ["/bin/sh"]
