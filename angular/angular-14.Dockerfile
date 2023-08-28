FROM ubuntu:20.04
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_16.x | bash \
    && apt-get install gcc g++ nodejs -yq make git
RUN apt-get install -yq nano vim

RUN npm update -g npm
RUN npm install @angular-devkit/core@14.2.8 -g
RUN npm install @angular-devkit/build-angular@14.2.8 -g
RUN npm install @angular/cli@14.2 -g

RUN mkdir -p /opt/scripts/
RUN echo 'export PATH="$PATH:/opt/scripts"' >> /root/.bashrc 

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/root/.bash_history" \
    && echo "$SNIPPET" >> "/root/.bashrc"

RUN mkdir -p /frontendangular/
ENTRYPOINT ["/bin/sh"]
WORKDIR /frontendangular/
CMD ["/entrypoint.sh"]
