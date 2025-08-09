#!/bin/sh
set -e

/opt/emqx/bin/emqx_ctl users add admin StrongAdminPassword123 || true
/opt/emqx/bin/emqx_ctl users add client clientpass || true

/opt/emqx/bin/emqx_ctl acl reload || true

echo "Users created (or already existed)."
