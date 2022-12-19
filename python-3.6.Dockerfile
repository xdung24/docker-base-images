FROM python:3.6-buster
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV LANG en_US.utf8

RUN apt-get -yq update && apt-get install -yq build-essential libssl-dev libffi-dev mariadb-client default-libmysqlclient-dev  libxslt-dev python3-dev curl wget make git nano vim

RUN pip install --upgrade pip

RUN apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

ENV TZ="Asia/Ho_Chi_Minh"

RUN mkdir -p /backenddjango/
RUN mkdir -p /opt/scripts/
RUN echo 'export PATH="$PATH:/opt/scripts"' >> /root/.bashrc 

ENTRYPOINT ["/bin/sh"]
WORKDIR /backenddjango/
CMD ["/entrypoint.sh"]
