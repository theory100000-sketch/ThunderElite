RESPUESTAS SEGURAS PARA TODOS LOS COMANDOS DE DISCORD
=====================================================

Se ha aplicado la corrección global a los 26 comandos del bot.

Qué corrige:
- URLs locales o no válidas en escudos, imágenes, autores y pies de embeds.
- Campos opcionales vacíos, nulos o demasiado largos.
- Títulos, descripciones y campos que superen los límites de Discord.
- Colores no válidos en embeds.
- Fallos de renderizado de la respuesta después de guardar correctamente en la web.
- Si Discord rechaza un embed, el bot reintenta automáticamente con una respuesta de texto sencilla.

No es necesario volver a registrar los comandos porque no han cambiado sus nombres ni opciones.
Solo hay que cerrar y volver a abrir INICIAR_LOCALHOST.bat para reiniciar el bot.

Comprobación realizada:
- 26 comandos registrados.
- Ningún comando duplicado.
- Ningún comando sin manejador.
