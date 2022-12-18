FROM node:10
RUN apt-get update -yq && apt-get install -yq wget curl nano 
RUN mkdir -p /app/

WORKDIR /app/
ENTRYPOINT [ "/bin/sh" ]
CMD ["/entrypoint.sh"]
