# MateOS

Sistema de gestión personalizado basado en Hyprland para Arch Linux.

## Estructura

- `bin/` - Scripts del sistema (118 scripts)
- `applications/` - Archivos .desktop e iconos
- `config/` - Configuraciones por defecto
- `default/` - Archivos de plantilla
- `version` - Versión actual del sistema

## Uso

Los scripts están en `$MATEOS_PATH/bin/` y usan el prefijo `mateos-`.

### Scripts principales:

- `mateos-theme-set` - Cambiar tema del sistema
- `mateos-cmd-screenshot` - Captura de pantalla
- `mateos-launch-*` - Lanzadores de aplicaciones
- `mateos-restart-*` - Reiniciar servicios
- `mateos-toggle-*` - Activar/desactivar funciones

## Configuración

Variable de entorno necesaria:
```bash
export MATEOS_PATH=$HOME/.local/share/mateOS
export PATH=$MATEOS_PATH/bin/:$PATH
```

Ya configurado en `~/.config/uwsm/env`
