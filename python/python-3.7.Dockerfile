FROM python:3.7
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV LANG en_US.utf8

RUN apt-get update -yq && apt-get install -yq  build-essential libssl-dev libffi-dev python3-dev mariadb-client libxslt-dev curl wget make git
RUN apt-get install -yq nano vim

RUN pip install --upgrade pip

RUN apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

ENV TZ="Asia/Ho_Chi_Minh"

COPY wait-for-it /usr/local/bin/

RUN mkdir -p /backenddjango/
RUN mkdir -p /opt/scripts/
RUN echo 'export PATH="$PATH:/opt/scripts"' >> /root/.bashrc 

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/root/.bash_history" \
    && echo "$SNIPPET" >> "/root/.bashrc"

ENTRYPOINT ["/bin/sh"]
WORKDIR /backenddjango/
CMD ["/entrypoint.sh"]
