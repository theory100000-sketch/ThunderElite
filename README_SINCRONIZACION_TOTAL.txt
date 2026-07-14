SINCRONIZACIÓN AUTOMÁTICA TOTAL

Esta versión corrige las zonas que todavía necesitaban actualizar manualmente la página.

- Los cambios en data.json se notifican inmediatamente a todos los navegadores conectados.
- Resultados, clasificación, calendarios, equipos, noticias, copas y competiciones se actualizan juntos.
- En la web pública se hace una recarga automática silenciosa conservando la sección y la posición de desplazamiento.
- Los paneles administrativos se actualizan sin recargar cuando es posible.
- Se usa SSE, BroadcastChannel y una comprobación ligera de versión cada 4 segundos como respaldo.
- HTML, JSON y los archivos de sincronización no quedan atrapados en la caché del navegador.

Todos los usuarios deben entrar a la misma dirección del servidor. Si cada uno abre su propio localhost, estarán usando instalaciones distintas.
