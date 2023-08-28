FROM node:12.22.12-alpine

RUN apk add wget curl nano vim
RUN mkdir -p /app/
RUN mkdir -p /opt/scripts/
RUN echo 'export PATH="$PATH:/opt/scripts"' >> /root/.bashrc 

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/root/.bash_history" \
    && echo "$SNIPPET" >> "/root/.bashrc"

WORKDIR /app/
ENTRYPOINT [ "/bin/sh" ]
CMD ["/entrypoint.sh"]
