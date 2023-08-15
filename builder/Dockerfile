FROM    alpine:edge

RUN     apk -U add alpine-sdk doas

RUN     mkdir -p /var/cache/distfiles && \
        adduser -D packager && \
        addgroup packager abuild && \
        chgrp abuild /var/cache/distfiles && \
        chmod g+w /var/cache/distfiles && \
        echo "permit nopass packager" >> /etc/doas.conf

ADD     setup.sh /home/packager/bin/setup.sh
# TODO: customize /etc/abuild.conf

WORKDIR /work
USER    packager

