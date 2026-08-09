#!/usr/bin/env sh
set -eu

repo="kavrynt/kavryctl"
version="${KAVRYNT_VERSION:-latest}"
install_dir="${KAVRYNT_INSTALL_DIR:-/usr/local/bin}"

os="$(uname -s | tr '[:upper:]' '[:lower:]')"
arch="$(uname -m)"

case "$os" in
  darwin|linux) ;;
  *) echo "Unsupported OS: $os" >&2; exit 1 ;;
esac

case "$arch" in
  x86_64|amd64) arch="amd64" ;;
  arm64|aarch64) arch="arm64" ;;
  *) echo "Unsupported architecture: $arch" >&2; exit 1 ;;
esac

archive="kavryctl-${os}-${arch}.tar.gz"
base_url="https://github.com/${repo}/releases"

if [ "$version" = "latest" ]; then
  url="${base_url}/latest/download/${archive}"
else
  url="${base_url}/download/${version}/${archive}"
fi

tmp_dir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

echo "Downloading ${url}"
curl -fsSL "$url" -o "${tmp_dir}/${archive}"
tar -xzf "${tmp_dir}/${archive}" -C "$tmp_dir"

if [ ! -x "${tmp_dir}/kavryctl" ]; then
  echo "Archive did not contain executable kavryctl" >&2
  exit 1
fi

mkdir -p "$install_dir"
if [ -w "$install_dir" ]; then
  cp "${tmp_dir}/kavryctl" "${install_dir}/kavryctl"
else
  sudo cp "${tmp_dir}/kavryctl" "${install_dir}/kavryctl"
fi

echo "Installed kavryctl to ${install_dir}/kavryctl"
"${install_dir}/kavryctl" version
