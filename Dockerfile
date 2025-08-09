FROM emqx/emqx:5.7.2

COPY config/emqx.conf /opt/emqx/etc/emqx.conf
COPY config/acl.conf /opt/emqx/etc/acl.conf

# Copier le script dans /tmp (zone modifiable)
COPY scripts/create-users.sh /tmp/create-users.sh

RUN chmod +x /tmp/create-users.sh

CMD ["/bin/sh", "-c", "/tmp/create-users.sh && /opt/emqx/bin/emqx console"]
