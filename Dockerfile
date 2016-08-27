FROM armhf/debian:latest
RUN apt-get update && apt-get install unbound wget -y
RUN wget ftp://FTP.INTERNIC.NET/domain/named.cache -O /etc/unbound/root.hints
COPY unbound.conf /etc/unbound/unbound.conf.d/unbound.conf
CMD ['unbound', '-d']
