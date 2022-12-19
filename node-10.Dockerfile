FROM node:10
RUN apt-get update -yq && apt-get install -yq wget curl nano 
RUN mkdir -p /app/
RUN mkdir -p /opt/scripts/
RUN echo 'export PATH="$PATH:/opt/scripts"' >> /root/.bashrc 

WORKDIR /app/
ENTRYPOINT [ "/bin/sh" ]
CMD ["/entrypoint.sh"]
