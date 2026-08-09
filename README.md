# Kavrynt GitHub Pages Site

Static GitHub Pages site. No Helm, backend or Node runtime required.

## Pages
- `index.html` - main landing page for Kavrynt MCP infrastructure
- `quickstart.html` - developer local demo and install path
- `docs.html` - architecture and MVP documentation
- `vision.html` - product vision
- `roadmap.html` - public alpha roadmap

## Install script

`install.sh` is designed for future `kavryctl` GitHub release assets:

```bash
curl -fsSL https://kavrynt.com/install.sh | sh
```

Expected release asset names:

- `kavryctl-darwin-arm64.tar.gz`
- `kavryctl-darwin-amd64.tar.gz`
- `kavryctl-linux-arm64.tar.gz`
- `kavryctl-linux-amd64.tar.gz`

Each archive should contain an executable named `kavryctl`.

## MVP visual

kavryctl -> MCPServer -> Operator -> Registry -> Gateway -> MCP traffic

The pipeline animation is pure CSS/JavaScript and loops continuously.

GitHub Pages serves this repository directly from the configured branch.
