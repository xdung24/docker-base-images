FROM node:14.21.3-alpine

RUN apk update && apk upgrade
RUN apk add --no-cache wget curl nano vim bash
RUN npm install nodemon -g

COPY wait-for-it /usr/local/bin/

RUN mkdir -p /app/
RUN mkdir -p /opt/scripts/
RUN echo 'export PATH="$PATH:/opt/scripts"' >> /root/.bashrc 

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/root/.bash_history" \
    && echo "$SNIPPET" >> "/root/.bashrc"

WORKDIR /app/
ENTRYPOINT [ "/bin/sh" ]
CMD ["/entrypoint.sh"]
