FROM ubuntu:18.04
RUN apt update -yq && apt install -yq software-properties-common && add-apt-repository --yes ppa:deadsnakes/ppa && apt install -yq python3 python3-pip python-pip python3-dev python3-venv 
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV LANG en_US.utf8

RUN apt install -yq build-essential libssl-dev libffi-dev mariadb-client libmysqlclient-dev libxslt-dev libffi6 curl wget make git

RUN python3 -m pip install pip
RUN pip install --upgrade pip

RUN apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

ENV TZ="Asia/Ho_Chi_Minh"
