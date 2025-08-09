FROM emqx/emqx:5.7.2

COPY config/emqx.conf /opt/emqx/etc/emqx.conf
COPY config/acl.conf /opt/emqx/etc/acl.conf
COPY scripts/create-users.sh /opt/emqx/scripts/create-users.sh

RUN chmod +x /opt/emqx/scripts/create-users.sh

CMD ["/bin/sh", "-c", "/opt/emqx/scripts/create-users.sh && /opt/emqx/bin/emqx console"]
