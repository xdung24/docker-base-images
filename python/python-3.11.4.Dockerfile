FROM python:3.11.4
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV LANG en_US.utf8
RUN apt-get update -yq && apt-get install -yq  build-essential libssl-dev libffi-dev python3-dev mariadb-client libxslt-dev curl wget make git nano vim

RUN apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

ENV TZ="Asia/Ho_Chi_Minh"

COPY divawallet-3.11-requirements.txt /
COPY diva-web-services-3.11-requirements.txt /
COPY paykit-3.11-requirements.txt /

COPY ../wait-for-it /usr/local/bin/

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r /divawallet-3.11-requirements.txt \
  && pip install --no-cache-dir -r /diva-web-services-3.11-requirements.txt \
  && pip install --no-cache-dir -r /paykit-3.11-requirements.txt \
  && pip install jurigged

RUN mkdir -p /backenddjango/
RUN mkdir -p /opt/scripts/
RUN echo 'export PATH="$PATH:/opt/scripts"' >> /root/.bashrc 

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/root/.bash_history" \
    && echo "$SNIPPET" >> "/root/.bashrc"

WORKDIR /backenddjango/

ENTRYPOINT ["/bin/sh"]
CMD ["/entrypoint.sh"]
