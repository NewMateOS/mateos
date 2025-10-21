#!/bin/bash

cd /home/rubrick/.local/share/mateOS

echo "🚀 Subiendo MateOS a GitHub..."
echo ""

# Verificar autenticación
if ! gh auth status &>/dev/null; then
    echo "❌ No estás autenticado en GitHub"
    echo "   Ejecuta: gh auth login"
    exit 1
fi

# Verificar git config
if ! git config user.email &>/dev/null; then
    echo "❌ Git no está configurado"
    echo "   Ejecuta: git config --global user.email 'tu@email.com'"
    echo "   Ejecuta: git config --global user.name 'Tu Nombre'"
    exit 1
fi

# Cambiar a main como rama principal
git branch -M main

# Hacer commit si hay cambios
if ! git diff --cached --quiet 2>/dev/null; then
    git commit -m "Initial commit: MateOS v1.0.0

- 119 scripts migrados desde Omarchy
- Configuraciones completas de Hyprland, Waybar, Kitty
- Sistema de temas y hooks
- Documentación completa (README, SETUP)
- Sin dependencias de fcitx, plymouth custom, o bash
- Optimizado para Arch Linux con zsh"
fi

# Crear repo en la organización
echo "📦 Creando repositorio en NewMateOS..."
gh repo create NewMateOS/mateos \
    --public \
    --source=. \
    --description="Sistema de gestión personalizado basado en Hyprland para Arch Linux" \
    --push

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ¡Repositorio creado exitosamente!"
    echo ""
    echo "🔗 URL: https://github.com/NewMateOS/mateos"
    echo ""
else
    echo ""
    echo "❌ Error al crear el repositorio"
    echo "   Verifica que tengas permisos en la organización NewMateOS"
fi
