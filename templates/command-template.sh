#!/bin/bash

# MateOS Command Template
# Plantilla estándar para nuevos comandos de MateOS

# =============================================================================
# CONFIGURACIÓN INICIAL
# =============================================================================

# Cargar variables de entorno centralizadas
MATEOS_PATH="${MATEOS_PATH:-$HOME/.local/share/mateOS}"
if [ -f "$MATEOS_PATH/config/mateos-vars.sh" ]; then
    source "$MATEOS_PATH/config/mateos-vars.sh"
fi

# =============================================================================
# CONFIGURACIÓN DEL COMANDO
# =============================================================================

# Nombre del comando
COMMAND_NAME="mateos-$(basename "$0" | sed 's/mateos-//')"

# Configuración de logging
LOG_COMMAND="${MATEOS_LOG_COMMANDS:-true}"
DEBUG_MODE="${MATEOS_DEBUG:-false}"

# =============================================================================
# FUNCIONES AUXILIARES
# =============================================================================

# Función para logging
log_message() {
    local level="$1"
    local message="$2"
    
    if [ "$LOG_COMMAND" = "true" ]; then
        local timestamp=$(date '+%Y-%m-%d %H:%M:%S')
        echo "[$timestamp] [$level] [$COMMAND_NAME] $message" >> "$MATEOS_LOG_PATH/commands.log" 2>/dev/null
    fi
}

# Función para debug
debug_log() {
    if [ "$DEBUG_MODE" = "true" ]; then
        echo "🔍 [DEBUG] $1" >&2
    fi
    log_message "DEBUG" "$1"
}

# Función para error
error_log() {
    echo "❌ $1" >&2
    log_message "ERROR" "$1"
}

# Función para info
info_log() {
    echo "ℹ️  $1"
    log_message "INFO" "$1"
}

# Función para éxito
success_log() {
    echo "✅ $1"
    log_message "INFO" "$1"
}

# =============================================================================
# FUNCIONES PRINCIPALES
# =============================================================================

# Función principal del comando
main_function() {
    local action="$1"
    
    case "$action" in
        "action1")
            action1_function "${@:2}"
            ;;
        "action2")
            action2_function "${@:2}"
            ;;
        "help"|"-h"|"--help")
            show_help
            ;;
        "")
            show_help
            ;;
        *)
            error_log "Acción desconocida: $action"
            show_help
            exit 1
            ;;
    esac
}

# Función de acción 1
action1_function() {
    local param="$1"
    
    if [ -z "$param" ]; then
        error_log "Parámetro requerido para action1"
        return 1
    fi
    
    info_log "Ejecutando action1 con parámetro: $param"
    
    # Aquí va la lógica de la acción
    success_log "Action1 completada exitosamente"
}

# Función de acción 2
action2_function() {
    local param="$1"
    
    if [ -z "$param" ]; then
        error_log "Parámetro requerido para action2"
        return 1
    fi
    
    info_log "Ejecutando action2 con parámetro: $param"
    
    # Aquí va la lógica de la acción
    success_log "Action2 completada exitosamente"
}

# Función para mostrar ayuda
show_help() {
    echo "🔧 $COMMAND_NAME"
    echo ""
    echo "Uso: $COMMAND_NAME <acción> [argumentos]"
    echo ""
    echo "Acciones:"
    echo "  action1 <parámetro>     - Ejecutar acción 1"
    echo "  action2 <parámetro>     - Ejecutar acción 2"
    echo "  help                    - Mostrar esta ayuda"
    echo ""
    echo "Ejemplos:"
    echo "  $COMMAND_NAME action1 valor1"
    echo "  $COMMAND_NAME action2 valor2"
    echo "  $COMMAND_NAME help"
    echo ""
    echo "Variables de entorno:"
    echo "  MATEOS_PATH: $MATEOS_PATH"
    echo "  HOME: $HOME"
    echo "  USER: $USER"
}

# =============================================================================
# EJECUCIÓN PRINCIPAL
# =============================================================================

# Verificar que las variables críticas estén definidas
if [ -z "$MATEOS_PATH" ] || [ -z "$HOME" ] || [ -z "$USER" ]; then
    error_log "Variables de entorno críticas no definidas"
    exit 1
fi

# Crear directorios necesarios
mkdir -p "$MATEOS_LOG_PATH" 2>/dev/null

# Ejecutar función principal
main_function "$@"
