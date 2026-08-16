# Kavrynt GitHub Pages Site

Static GitHub Pages site. No Helm, backend or Node runtime required.

## Pages
- `index.html` - main landing page for Kavrynt MCP infrastructure
- `docs.html` - compatibility redirect to https://docs.kavrynt.com/
- `vision.html` - product vision
- `roadmap.html` - public alpha roadmap

Product documentation, installation guidance, architecture, and CLI reference
are maintained at https://docs.kavrynt.com/.

## Install script

`install.sh` is designed for `kavryctl` GitHub release assets from the public
`kavrynt/kavrynt` monorepo:

```bash
curl -fsSL https://kavrynt.com/install.sh | sh
```

Expected release asset names:

- `kavryctl_darwin_arm64.tar.gz`
- `kavryctl_darwin_amd64.tar.gz`
- `kavryctl_linux_arm64.tar.gz`
- `kavryctl_linux_amd64.tar.gz`

Each archive should contain an executable named `kavryctl`.

## MVP visual

kavryctl -> Kubernetes -> MCPServer -> Operator -> Registry -> Gateway -> MCP traffic

The pipeline animation is pure CSS/JavaScript and loops continuously.

GitHub Pages serves this repository directly from the configured branch.
