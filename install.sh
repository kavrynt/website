#!/usr/bin/env sh
set -eu

cat >&2 <<'EOF'
Kavrynt installs with Helm; there is no script installer.

  helm upgrade --install kavrynt oci://registry-1.docker.io/kavrynt/kavrynt \
    --version 1.0.0-beta.4 \
    --namespace kavrynt-system --create-namespace --wait \
    --set gateway.auth.resourceURL=https://mcp.example.com \
    --set-json 'gateway.auth.issuers=[{"issuer":"https://login.example.com/realms/agents"}]'

For a local trial without an identity provider, replace the two auth
settings with --set gateway.auth.enabled=false.

Full guide: https://docs.kavrynt.com/quickstart/
EOF

exit 1
