#!/usr/bin/env sh
set -eu

cat >&2 <<'EOF'
Kavrynt installs with Helm; there is no script installer.

  helm upgrade --install kavrynt oci://registry-1.docker.io/kavrynt/kavrynt \
    --version 0.0.2-beta.1 \
    --namespace kavrynt-system --create-namespace --wait

Full guide: https://docs.kavrynt.com/quickstart/
EOF

exit 1
