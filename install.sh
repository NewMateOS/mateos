#!/bin/bash

# MateOS Installation Script

MATEOS_PATH="${MATEOS_PATH:-$HOME/.local/share/mateOS}"

echo "🚀 Installing MateOS..."
echo ""

# 1. Create necessary directories
echo "📁 Creating directories..."
mkdir -p ~/.config/mateos/{themes,current,hooks}
mkdir -p ~/.local/state/mateos/toggles
mkdir -p ~/.local/share/icons/hicolor/48x48/apps/

# 2. Install applications
echo "📦 Installing desktop applications..."
if [ -d "$MATEOS_PATH/applications" ]; then
    mateos-refresh-applications 2>/dev/null || {
        cp "$MATEOS_PATH"/applications/*.desktop ~/.local/share/applications/ 2>/dev/null
        cp "$MATEOS_PATH"/applications/icons/*.png ~/.local/share/icons/hicolor/48x48/apps/ 2>/dev/null
        update-desktop-database ~/.local/share/applications 2>/dev/null
    }
fi

# 3. Install systemd services (optional)
echo "⚙️  Setting up battery monitor (optional)..."
if command -v systemctl &>/dev/null; then
    mkdir -p ~/.config/systemd/user/
    cp "$MATEOS_PATH"/config/systemd/user/*.{service,timer} ~/.config/systemd/user/ 2>/dev/null
    systemctl --user daemon-reload 2>/dev/null
fi

# 4. Verify PATH
echo "🔍 Verifying PATH..."
if [[ ":$PATH:" != *":$MATEOS_PATH/bin:"* ]]; then
    echo "⚠️  Warning: $MATEOS_PATH/bin is not in PATH"
    echo "   Add this to your shell config:"
    echo "   export MATEOS_PATH=$HOME/.local/share/mateOS"
    echo "   export PATH=\$MATEOS_PATH/bin:\$PATH"
fi

# 5. Check for required tools
echo "🔧 Checking dependencies..."
MISSING=""
for cmd in hyprctl kitty waybar gum jq; do
    if ! command -v $cmd &>/dev/null; then
        MISSING="$MISSING $cmd"
    fi
done

if [ -n "$MISSING" ]; then
    echo "⚠️  Missing optional tools:$MISSING"
    echo "   Install with: yay -S$MISSING"
fi

echo ""
echo "✅ MateOS installation complete!"
echo ""
echo "Next steps:"
echo "  1. Restart your session to load environment variables"
echo "  2. Run: mateos-version"
echo "  3. Optional: Enable battery monitor"
echo "     systemctl --user enable --now mateos-battery-monitor.timer"
