ARG VERSION=latest
FROM mirror.gcr.io/library/alpine:${VERSION}

ARG VERSION=latest
RUN echo "https://dl-cdn.alpinelinux.org/alpine/${VERSION}/testing" >>/etc/apk/repositories &&\
    apk add --no-cache \
    cowsay

VOLUME [ "/log" ]

RUN echo -e "#!/bin/sh\ncowsay -f tux \"\$@\"|tee /log/my.log" >entrypoint.sh &&\
    chmod u+x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
