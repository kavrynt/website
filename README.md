# Kavrynt Website

Static marketing site. No Helm, backend or Node runtime required.

## Pages
- `index.html` - main landing page for Kavrynt MCP infrastructure
- `quickstart.html` - developer Kubernetes install path, with Kind for local testing
- `docs.html` - architecture and MVP documentation
- `vision.html` - product vision
- `roadmap.html` - commercial trial roadmap

## Trial image positioning

The public website points developers to approved alpha or beta trial images
instead of source code access:

```bash
export KAVRYNT_IMAGE_REGISTRY=docker.io/kavrynt
export KAVRYNT_TRIAL_TAG=0.1.0-beta
```

## MVP visual

kavryctl -> Kubernetes -> MCPServer -> Operator -> Registry -> Gateway -> MCP traffic

The pipeline animation is pure CSS/JavaScript and loops continuously.
