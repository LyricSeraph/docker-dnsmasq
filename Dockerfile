FROM alpine:edge
LABEL maintainer="lyriclaw@lyriclaw.me"
# fetch dnsmasq and webproc binary
RUN apk add bash curl
RUN curl https://i.jpillora.com/webproc | bash
COPY dnsmasq.conf /etc/dnsmasq.conf
# run!
ENTRYPOINT ["webproc","--configuration-file","/etc/dnsmasq.conf","--","dnsmasq","--no-daemon"]
