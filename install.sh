#!/usr/bin/env sh
set -eu

cat >&2 <<'EOF'
Kavrynt CLI public install is not available for the commercial trial.

Use the approved trial images and the Kubernetes/Kind runbook instead:

  export KAVRYNT_IMAGE_REGISTRY=docker.io/kavrynt
  export KAVRYNT_TRIAL_TAG=0.0.1-beta.1
  docker pull "$KAVRYNT_IMAGE_REGISTRY/registry:$KAVRYNT_TRIAL_TAG"
  docker pull "$KAVRYNT_IMAGE_REGISTRY/gateway:$KAVRYNT_TRIAL_TAG"
  docker pull "$KAVRYNT_IMAGE_REGISTRY/operator:$KAVRYNT_TRIAL_TAG"
EOF

exit 1
