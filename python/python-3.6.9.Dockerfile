FROM ubuntu:18.04
RUN apt-get update -yq && apt install -yq software-properties-common tzdata && add-apt-repository --yes ppa:deadsnakes/ppa && apt-get install -yq python3 python3-pip python-pip python3-dev python3-venv 
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV LANG en_US.utf8

RUN apt-get install -yq build-essential libssl-dev libffi-dev mariadb-client libmysqlclient-dev libxslt-dev libffi6 curl wget make git
RUN apt-get install -yq nano vim

RUN python3 -m pip install pip
RUN pip install --upgrade pip

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ="Asia/Ho_Chi_Minh"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN ln -s /usr/bin/python3.6 /usr/local/bin/python3

COPY wait-for-it /usr/local/bin/

RUN mkdir -p /backenddjango/
RUN mkdir -p /opt/scripts/
RUN echo 'export PATH="$PATH:/opt/scripts"' >> /root/.bashrc 

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/root/.bash_history" \
    && echo "$SNIPPET" >> "/root/.bashrc"

ENTRYPOINT ["/bin/sh"]
WORKDIR /backenddjango/
CMD ["/entrypoint.sh"]
