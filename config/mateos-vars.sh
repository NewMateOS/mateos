#!/bin/bash

# MateOS Environment Variables
# Variables de entorno centralizadas para todos los comandos de MateOS
# Este archivo se carga automáticamente por el sistema

# =============================================================================
# RUTAS PRINCIPALES
# =============================================================================

# Ruta principal de MateOS
export MATEOS_PATH="${MATEOS_PATH:-$HOME/.local/share/mateOS}"

# Rutas de configuración
export MATEOS_CONFIG_PATH="${MATEOS_CONFIG_PATH:-$HOME/.config/mateOS}"
export MATEOS_STATE_PATH="${MATEOS_STATE_PATH:-$HOME/.local/state/mateOS}"
export MATEOS_BACKUP_PATH="${MATEOS_BACKUP_PATH:-$HOME/.config/mateOS/backups}"
export MATEOS_LOG_PATH="${MATEOS_LOG_PATH:-$HOME/.local/state/mateOS/logs}"
export MATEOS_THEMES_PATH="${MATEOS_THEMES_PATH:-$HOME/.config/mateOS/themes}"

# =============================================================================
# VARIABLES DEL SISTEMA
# =============================================================================

# Variables del usuario
export USER="${USER:-$(whoami)}"
export HOME="${HOME:-/home/$USER}"
# UID y EUID son variables de solo lectura, no se pueden exportar
# Se obtienen con: $(id -u) cuando se necesiten

# Variables del sistema
export PATH="${PATH:-/usr/local/bin:/usr/bin:/bin}"
export EDITOR="${EDITOR:-nvim}"
export TERMINAL="${TERMINAL:-kitty}"

# =============================================================================
# APLICACIONES POR DEFECTO
# =============================================================================

# Terminal por defecto
export MATEOS_TERMINAL="${MATEOS_TERMINAL:-kitty}"

# Navegador por defecto
export MATEOS_BROWSER="${MATEOS_BROWSER:-chromium}"

# Editor por defecto
export MATEOS_EDITOR="${MATEOS_EDITOR:-nvim}"

# Gestor de archivos por defecto
export MATEOS_FILE_MANAGER="${MATEOS_FILE_MANAGER:-nautilus}"

# =============================================================================
# CONFIGURACIÓN DE HYPRLAND
# =============================================================================

# Configuración de Hyprland
export MATEOS_HYPRLAND_GAPS_IN="${MATEOS_HYPRLAND_GAPS_IN:-5}"
export MATEOS_HYPRLAND_GAPS_OUT="${MATEOS_HYPRLAND_GAPS_OUT:-10}"
export MATEOS_HYPRLAND_ROUNDING="${MATEOS_HYPRLAND_ROUNDING:-8}"
export MATEOS_HYPRLAND_LAYOUT="${MATEOS_HYPRLAND_LAYOUT:-dwindle}"

# =============================================================================
# CONFIGURACIÓN DE WAYBAR
# =============================================================================

# Configuración de Waybar
export MATEOS_WAYBAR_HEIGHT="${MATEOS_WAYBAR_HEIGHT:-26}"
export MATEOS_WAYBAR_POSITION="${MATEOS_WAYBAR_POSITION:-top}"
export MATEOS_WAYBAR_ENABLE_TRAY="${MATEOS_WAYBAR_ENABLE_TRAY:-true}"
export MATEOS_WAYBAR_ENABLE_BLUETOOTH="${MATEOS_WAYBAR_ENABLE_BLUETOOTH:-true}"
export MATEOS_WAYBAR_ENABLE_NETWORK="${MATEOS_WAYBAR_ENABLE_NETWORK:-true}"
export MATEOS_WAYBAR_ENABLE_BATTERY="${MATEOS_WAYBAR_ENABLE_BATTERY:-true}"

# =============================================================================
# CONFIGURACIÓN DE TEMAS
# =============================================================================

# Tema por defecto
export MATEOS_DEFAULT_THEME="${MATEOS_DEFAULT_THEME:-omarchy-default}"
export MATEOS_THEME_AUTO_APPLY="${MATEOS_THEME_AUTO_APPLY:-true}"

# =============================================================================
# CONFIGURACIÓN DE RESPALDOS
# =============================================================================

# Configuración de respaldos
export MATEOS_BACKUP_AUTO="${MATEOS_BACKUP_AUTO:-true}"
export MATEOS_BACKUP_FREQUENCY="${MATEOS_BACKUP_FREQUENCY:-daily}"
export MATEOS_BACKUP_TIME="${MATEOS_BACKUP_TIME:-02:00}"
export MATEOS_BACKUP_MAX="${MATEOS_BACKUP_MAX:-10}"
export MATEOS_BACKUP_COMPRESS="${MATEOS_BACKUP_COMPRESS:-true}"

# =============================================================================
# CONFIGURACIÓN DE LOGGING
# =============================================================================

# Configuración de logging
export MATEOS_LOG_LEVEL="${MATEOS_LOG_LEVEL:-INFO}"
export MATEOS_LOG_ROTATION="${MATEOS_LOG_ROTATION:-daily}"
export MATEOS_LOG_MAX_FILES="${MATEOS_LOG_MAX_FILES:-7}"
export MATEOS_LOG_DEBUG="${MATEOS_LOG_DEBUG:-false}"

# =============================================================================
# CONFIGURACIÓN DE SEGURIDAD
# =============================================================================

# Configuración de seguridad
export MATEOS_SECURITY_REQUIRE_SUDO="${MATEOS_SECURITY_REQUIRE_SUDO:-true}"
export MATEOS_SECURITY_VALIDATE_INTEGRITY="${MATEOS_SECURITY_VALIDATE_INTEGRITY:-true}"
export MATEOS_SECURITY_AUDIT_LOG="${MATEOS_SECURITY_AUDIT_LOG:-true}"

# =============================================================================
# CONFIGURACIÓN DE PERFILES
# =============================================================================

# Perfil actual
export MATEOS_CURRENT_PROFILE="${MATEOS_CURRENT_PROFILE:-default}"

# Perfiles disponibles
export MATEOS_AVAILABLE_PROFILES="${MATEOS_AVAILABLE_PROFILES:-default,development,gaming,server,minimal}"

# =============================================================================
# CONFIGURACIÓN DE DESARROLLO
# =============================================================================

# Configuración para desarrollo
export MATEOS_DEV_ENABLE_DOCKER="${MATEOS_DEV_ENABLE_DOCKER:-true}"
export MATEOS_DEV_ENABLE_GIT_HOOKS="${MATEOS_DEV_ENABLE_GIT_HOOKS:-true}"
export MATEOS_DEV_ENABLE_DEBUG_TOOLS="${MATEOS_DEV_ENABLE_DEBUG_TOOLS:-true}"
export MATEOS_DEV_DEFAULT_WORKSPACE="${MATEOS_DEV_DEFAULT_WORKSPACE:-2}"

# =============================================================================
# CONFIGURACIÓN DE GAMING
# =============================================================================

# Configuración para gaming
export MATEOS_GAMING_MODE="${MATEOS_GAMING_MODE:-false}"
export MATEOS_GAMING_DISABLE_COMPOSITOR="${MATEOS_GAMING_DISABLE_COMPOSITOR:-false}"
export MATEOS_GAMING_ENABLE_GAMEPAD="${MATEOS_GAMING_ENABLE_GAMEPAD:-false}"
export MATEOS_GAMING_DEFAULT_WORKSPACE="${MATEOS_GAMING_DEFAULT_WORKSPACE:-3}"

# =============================================================================
# CONFIGURACIÓN DE SERVIDOR
# =============================================================================

# Configuración para servidor
export MATEOS_SERVER_ENABLE_SSH="${MATEOS_SERVER_ENABLE_SSH:-false}"
export MATEOS_SERVER_ENABLE_REMOTE_ACCESS="${MATEOS_SERVER_ENABLE_REMOTE_ACCESS:-false}"
export MATEOS_SERVER_DISABLE_GUI_APPS="${MATEOS_SERVER_DISABLE_GUI_APPS:-false}"
export MATEOS_SERVER_ENABLE_MONITORING="${MATEOS_SERVER_ENABLE_MONITORING:-false}"

# =============================================================================
# CONFIGURACIÓN MINIMALISTA
# =============================================================================

# Configuración minimalista
export MATEOS_MINIMAL_DISABLE_ANIMATIONS="${MATEOS_MINIMAL_DISABLE_ANIMATIONS:-false}"
export MATEOS_MINIMAL_WAYBAR="${MATEOS_MINIMAL_WAYBAR:-false}"
export MATEOS_MINIMAL_DISABLE_TRAY="${MATEOS_MINIMAL_DISABLE_TRAY:-false}"
export MATEOS_MINIMAL_ESSENTIAL_APPS_ONLY="${MATEOS_MINIMAL_ESSENTIAL_APPS_ONLY:-false}"

# =============================================================================
# VARIABLES DEL SISTEMA
# =============================================================================

# Versión de MateOS
export MATEOS_VERSION="${MATEOS_VERSION:-1.0.0}"

# Modo debug
export MATEOS_DEBUG="${MATEOS_DEBUG:-false}"

# Auto-actualización
export MATEOS_AUTO_UPDATE="${MATEOS_AUTO_UPDATE:-true}"

# Retención de respaldos (días)
export MATEOS_BACKUP_RETENTION_DAYS="${MATEOS_BACKUP_RETENTION_DAYS:-30}"

# =============================================================================
# VARIABLES ESPECÍFICAS DE APLICACIONES
# =============================================================================

# Variables para aplicaciones específicas
export APP_NAME="${APP_NAME:-}"
export DEBUG="${DEBUG:-false}"
export XKB_KEYMAP_CACHE="${XKB_KEYMAP_CACHE:-/tmp/xkb-cache}"

# =============================================================================
# PATH Y BINARIOS
# =============================================================================

# Añadir binarios de MateOS al PATH
export PATH="$MATEOS_PATH/bin:$PATH"

# =============================================================================
# FUNCIONES AUXILIARES
# =============================================================================

# Función para cargar configuración desde archivo
mateos_load_config() {
    if [ -f "$MATEOS_CONFIG_PATH/mateos.conf" ]; then
        source "$MATEOS_CONFIG_PATH/mateos.conf"
    fi
}

# Función para aplicar perfil
mateos_apply_profile() {
    local profile="$1"
    if [ -z "$profile" ]; then
        profile="$MATEOS_CURRENT_PROFILE"
    fi
    
    case "$profile" in
        "development")
            export MATEOS_DEV_ENABLE_DOCKER="true"
            export MATEOS_DEV_ENABLE_GIT_HOOKS="true"
            export MATEOS_DEV_ENABLE_DEBUG_TOOLS="true"
            ;;
        "gaming")
            export MATEOS_GAMING_MODE="true"
            export MATEOS_GAMING_DISABLE_COMPOSITOR="true"
            export MATEOS_GAMING_ENABLE_GAMEPAD="true"
            ;;
        "server")
            export MATEOS_SERVER_ENABLE_SSH="true"
            export MATEOS_SERVER_ENABLE_REMOTE_ACCESS="true"
            export MATEOS_SERVER_DISABLE_GUI_APPS="true"
            ;;
        "minimal")
            export MATEOS_MINIMAL_DISABLE_ANIMATIONS="true"
            export MATEOS_MINIMAL_WAYBAR="true"
            export MATEOS_MINIMAL_DISABLE_TRAY="true"
            ;;
    esac
    
    export MATEOS_CURRENT_PROFILE="$profile"
}

# Cargar configuración al inicio
mateos_load_config
