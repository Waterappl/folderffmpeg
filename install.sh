#!/bin/bash
# install.sh - One-click installer for folderffmpeg
# Repo: https://github.com/Waterappl/folderffmpeg

set -euo pipefail

echo "🚀 folderffmpeg Installer"
echo "=========================="

detect_platform() {
    if [ -d "/data/data/com.termux" ] || command -v termux-setup-storage &>/dev/null; then
        echo "TERMUX"
    else
        echo "LINUX"
    fi
}

PLATFORM=$(detect_platform)
echo "Detected: $PLATFORM"

if [ "$PLATFORM" = "TERMUX" ]; then
    pkg update -y
    pkg install -y ffmpeg dialog termux-api
    termux-setup-storage
    BIN_DIR="$PREFIX/bin"
else
    sudo apt update -y
    sudo apt install -y ffmpeg dialog
    BIN_DIR="/usr/local/bin"
fi

mkdir -p "$BIN_DIR"

cat > "$BIN_DIR/folderffmpeg" << 'EOF'
#!/bin/bash
echo "folderffmpeg installed successfully."
echo "Now upload full script here."
EOF

chmod +x "$BIN_DIR/folderffmpeg"

echo ""
echo "✅ Installation complete!"
echo "Run: folderffmpeg"
