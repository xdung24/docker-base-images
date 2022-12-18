FROM node:12
RUN apt-get update -yq && apt-get install -yq wget curl nano 
RUN mkdir -p /app/

WORKDIR /app/
ENTRYPOINT [ "/bin/sh" ]
CMD ["/entrypoint.sh"]
