# Contexto del Proyecto y Memoria para el Agente

Este archivo sirve como memoria persistente para futuras sesiones con el agente de IA (Antigravity).

## Estado del Entorno
- **Sistema Operativo:** Windows con WSL (Ubuntu).
- **Limitación Conocida:** El agente NO puede ejecutar comandos directamente en la terminal de WSL debido a un error de conexión (`argumento -c inválido`).
- **Solución:** El agente edita archivos -> El usuario ejecuta los comandos manualmente en su terminal.

## Flujo de Trabajo
- **Live Server:** Usamos `browser-sync`.
  - Comando: `npx browser-sync start --server --files "**/*"` (o simplemente `browser-sync` si está instalado globalmente).
  - **Alias:** El usuario utiliza el alias `vivo` en su terminal para lanzar el servidor.

## Historial de Decisiones
- [Fecha: 28-12-2025] Se intentó usar `live-server` mediante automatización pero falló por error de WSL. Se acordó usar ejecución manual.
- El usuario prefiere que el agente documente tareas pendientes aquí para no perder contexto al reiniciar.

## Pendientes / Próximos Pasos
- [ ] Configurar archivo `bs-config.js` si se requiere personalización avanzada.
