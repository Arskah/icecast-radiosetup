FROM alpine
RUN apk add --no-cache icecast gettext bash
WORKDIR /app

RUN chmod 777 -R /app

#COPY run.sh run.sh
COPY icecast.xml icecast.xml

#RUN chown nobody -R /usr/share/icecast

ENTRYPOINT icecast -c icecast.xml
