CORRECCIÓN: EL COMANDO SE GUARDABA EN LA WEB PERO DISCORD MOSTRABA ERROR

Causa:
Los escudos se guardan en la web con rutas locales como /escudos/archivo.png.
Discord solo acepta URLs públicas http/https para las miniaturas de los embeds.
Después de guardar correctamente los datos, Discord intentaba usar la ruta local como miniatura y lanzaba el mensaje de error.

Corrección aplicada:
- Los embeds usan primero la URL original de Discord del escudo.
- Si no existe una URL válida, usan una imagen segura de respaldo.
- Se ha aplicado a crear club, economía, plantilla, fichajes, sanciones y demás comandos con escudo.
- El guardado y la sincronización con la web permanecen intactos.

No hace falta volver a registrar los comandos porque no se han cambiado sus nombres ni opciones.
Reinicia la web y el bot usando INICIAR_LOCALHOST.bat.
