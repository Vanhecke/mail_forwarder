FROM alpine:3.6

MAINTAINER Joris Vanhecke <joris@jorisvanhecke.be>

# Need G_USERNAME, G_PASSWORD, G_FROM DROPBOX_EMAIL, LABELFOLDER variables!

RUN apk add --no-cache fetchmail msmtp gettext ca-certificates
RUN update-ca-certificates

RUN adduser -S forwarder
USER forwarder

ADD fetchmail.rc /home/forwarder/fetchmail.rc
ADD msmtp.rc /home/forwarder/msmtp.rc
ADD run.sh /run.sh

CMD ["/run.sh"]