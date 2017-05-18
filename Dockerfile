FROM debian:jessie
MAINTAINER "Herlon Aguiar" <herlon214@gmail.com>

COPY src/* /build/
RUN /bin/bash /build/docker-install.sh \
&& rm -rvf /build/*

EXPOSE 6081
EXPOSE 6085
ENTRYPOINT ["/usr/local/bin/chaperone"]
CMD ["--user", "varnish"]
