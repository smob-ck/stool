#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "=== STOOL v1 installer ==="

if [ -d /data/data/com.termux/files/usr ]; then
  pkg update -y || true
  pkg install -y git bash coreutils findutils sed grep zip unzip || true
fi

ROOT="$(cd "$(dirname "$0")" && pwd)"
chmod +x "$ROOT/stool"
mkdir -p "$HOME/bin"

cat > "$HOME/bin/stool" <<EOF
#!/data/data/com.termux/files/usr/bin/bash
exec "$ROOT/stool" "\$@"
EOF
chmod +x "$HOME/bin/stool"

case ":$PATH:" in
  *":$HOME/bin:"*) ;;
  *) echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"; export PATH="$HOME/bin:$PATH";;
esac

echo
echo "STOOL v1 installed."
echo "Run: stool help"
echo
stool help
