# Guía de Configuración de MateOS

## ✅ Instalación completada

MateOS ha sido migrado desde Omarchy con las siguientes características:

### 📦 Contenido
- **118 scripts** en `bin/`
- **34 archivos de configuración**
- **32 archivos por defecto**
- **4 aplicaciones desktop**
- **17 iconos**

### 🚫 Exclusiones aplicadas
- ❌ fcitx5 (no incluido)
- ❌ Plymouth personalizado (no incluido)
- ❌ Mirrorlist personalizada (no incluida)
- ❌ Configs de bash (usas zsh)
- ❌ Scripts de Apple

## 🔧 Configuración actual

### Variables de entorno
Ya configuradas en `~/.config/uwsm/env`:
```bash
export MATEOS_PATH=$HOME/.local/share/mateOS
export PATH=$MATEOS_PATH/bin/:$PATH
```

### Estructura de directorios
```
~/.local/share/mateOS/          # Sistema principal
~/.config/mateos/               # Configuración de usuario
~/.local/state/mateos/          # Estado de toggles
```

## 🚀 Próximos pasos

### 1. Aplicar configuración (IMPORTANTE)
```bash
# Reiniciar sesión para cargar variables de entorno
# O ejecutar manualmente:
export MATEOS_PATH=$HOME/.local/share/mateOS
export PATH=$MATEOS_PATH/bin/:$PATH
```

### 2. Verificar instalación
```bash
mateos-version                  # Ver versión
mateos-cmd-present mateos-version  # Verificar que scripts funcionen
```

### 3. Instalar aplicaciones (opcional)
```bash
mateos-refresh-applications     # Instalar .desktop files
```

### 4. Configurar battery monitor (opcional)
```bash
systemctl --user enable --now mateos-battery-monitor.timer
```

### 5. Configurar temas (opcional)
```bash
# Ver temas disponibles
mateos-theme-list

# Instalar un tema
mateos-theme-install <git-repo-url>

# Cambiar tema
mateos-theme-set <theme-name>
```

## 📚 Comandos útiles

### Gestión de sistema
- `mateos-update` - Actualizar sistema
- `mateos-snapshot create` - Crear snapshot con snapper
- `mateos-state set <name>` - Guardar estado

### Aplicaciones
- `mateos-launch-browser` - Abrir navegador
- `mateos-launch-editor` - Abrir editor
- `mateos-launch-or-focus <app>` - Lanzar o enfocar app

### Captura
- `mateos-cmd-screenshot` - Captura de pantalla
- `mateos-cmd-screenrecord` - Grabación de pantalla

### Servicios
- `mateos-restart-waybar` - Reiniciar waybar
- `mateos-restart-hypridle` - Reiniciar hypridle
- `mateos-restart-pipewire` - Reiniciar pipewire

### Toggles
- `mateos-toggle-waybar` - Mostrar/ocultar waybar
- `mateos-toggle-nightlight` - Luz nocturna on/off
- `mateos-toggle-idle` - Bloqueo automático on/off

### Temas
- `mateos-theme-set <name>` - Cambiar tema
- `mateos-theme-next` - Siguiente tema
- `mateos-theme-bg-next` - Siguiente fondo

### Fuentes
- `mateos-font-list` - Listar fuentes monospace
- `mateos-font-set <name>` - Cambiar fuente del sistema

## 🔍 Diagnóstico

Si algo no funciona:

1. Verificar que las variables estén cargadas:
```bash
echo $MATEOS_PATH
which mateos-version
```

2. Verificar permisos de scripts:
```bash
ls -l $MATEOS_PATH/bin/mateos-version
```

3. Ver logs de servicios:
```bash
systemctl --user status mateos-battery-monitor.service
journalctl --user -u mateos-battery-monitor
```

## 📝 Personalización

### Hooks personalizados
Crea scripts en `~/.config/mateos/hooks/`:
- `font-set` - Se ejecuta al cambiar fuente
- `theme-set` - Se ejecuta al cambiar tema  
- `post-update` - Se ejecuta después de actualizar

### Temas personalizados
Los temas se guardan en `~/.config/mateos/themes/`

Puedes crear un tema personalizado o clonar uno existente:
```bash
mateos-theme-install https://github.com/user/theme-name.git
```

## 🆘 Soporte

Para problemas o preguntas, revisa:
1. Este archivo (SETUP.md)
2. README.md en el directorio principal
3. Los comentarios en los scripts individuales

---

**Versión**: 1.0.0  
**Fecha de migración**: $(date +%Y-%m-%d)
