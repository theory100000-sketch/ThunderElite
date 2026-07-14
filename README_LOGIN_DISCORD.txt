LOGIN OBLIGATORIO CON DISCORD

Si después de aceptar en Discord sale "No se pudo validar Discord", revisa esto:

1) En .env pon datos de OAuth2, NO el token del bot:
DISCORD_CLIENT_ID=Application ID
DISCORD_CLIENT_SECRET=Client Secret de OAuth2
DISCORD_REDIRECT_URI=http://localhost:3000/auth/discord/callback
WEB_SESSION_SECRET=pon_una_clave_larga_y_segura

2) En Discord Developer Portal:
Application > OAuth2 > Redirects
Añade EXACTAMENTE:
http://localhost:3000/auth/discord/callback

3) Si usas otro puerto/dominio, debe coincidir EXACTAMENTE en ambos sitios.

4) No recargues la URL /auth/discord/callback. El code de Discord solo se puede usar una vez.

La web ahora muestra una página de error con el Redirect URI usado y la respuesta real de Discord para saber qué está mal.
