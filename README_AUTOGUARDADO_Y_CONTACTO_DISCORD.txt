AUTOGUARDADO, SINCRONIZACIÓN Y CONTACTO DISCORD
================================================

1. AUTOGUARDADO
- En los paneles de Resultados y Copas, al completar los dos marcadores se guarda automáticamente tras aproximadamente 1 segundo.
- La fecha y la hora también se guardan automáticamente sin convertir un partido pendiente en un 0-0.
- En el panel de Competiciones, los cambios del formulario y los participantes se guardan automáticamente.
- Los botones manuales de guardar siguen disponibles.

2. SINCRONIZACIÓN ENTRE NAVEGADORES
- El servidor vigila data.json y avisa en tiempo real a todos los navegadores abiertos.
- Cuando un administrador guarda un cambio, las demás personas ven la información actualizada automáticamente.
- La sincronización usa Server-Sent Events y tiene un respaldo mediante consulta periódica.

IMPORTANTE: para que distintos dispositivos vean lo mismo, todos deben entrar en la misma instancia del servidor. No deben abrir copias independientes del ZIP en ordenadores distintos.

3. CONTACTO A DISCORD
El formulario Contacto envía los mensajes al canal configurado en Discord.

Configuración recomendada en .env:
DISCORD_CONTACT_WEBHOOK_URL=PEGA_AQUI_EL_WEBHOOK

Alternativa usando el bot:
TOKEN=TOKEN_DEL_BOT
DISCORD_CONTACT_CHANNEL_ID=ID_DEL_CANAL

Si DISCORD_CONTACT_CHANNEL_ID queda vacío, se utiliza TICKETS_LOGS_CHANNEL_ID.
Los mensajes también se guardan localmente en contact_messages.json como copia de seguridad.
