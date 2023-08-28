FROM ubuntu:22.04 
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_18.x | bash \
    && apt-get install gcc g++ nodejs -yq make git
RUN apt-get install -yq nano vim

RUN npm update -g npm
RUN npm install @angular-devkit/core@16 -g
RUN npm install @angular-devkit/build-angular@16 -g
RUN npm install @angular/cli@16 -g

RUN mkdir -p /opt/scripts/
RUN echo 'export PATH="$PATH:/opt/scripts"' >> /root/.bashrc 

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/root/.bash_history" \
    && echo "$SNIPPET" >> "/root/.bashrc"

RUN mkdir -p /frontendangular/
ENTRYPOINT ["/bin/sh"]
WORKDIR /frontendangular/
CMD ["/entrypoint.sh"]
