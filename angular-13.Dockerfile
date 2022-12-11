FROM ubuntu:20.04 
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_16.x | bash \
    && apt-get install gcc g++ nodejs -yq make git
RUN apt-get install nano vim

RUN npm update -g npm
RUN npm install @angular-devkit/core@13.3.9 -g
RUN npm install @angular-devkit/build-angular@13.3.9 -g
RUN npm install @angular/cli@13.3 -g

ENTRYPOINT ["/bin/sh"]
