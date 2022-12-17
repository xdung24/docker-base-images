FROM ubuntu:22.04 
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_18.x | bash \
    && apt-get install gcc g++ nodejs -yq make git
RUN apt-get install -yq nano vim

RUN npm update -g npm
RUN npm install @angular-devkit/core@15 -g
RUN npm install @angular-devkit/build-angular@15 -g
RUN npm install @angular/cli@15 -g

RUN mkdir -p /frontendangular/
ENTRYPOINT ["/bin/sh"]
WORKDIR /frontendangular/
CMD ["/entrypoint.sh"]
