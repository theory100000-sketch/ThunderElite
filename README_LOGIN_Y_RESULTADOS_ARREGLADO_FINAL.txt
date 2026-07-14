FIX FINAL LOGIN Y RESULTADOS

Cambios:
- Login admin interceptado de forma limpia.
- Usuario admin: roleplayserver007@gmail.com
- Contraseña: admin123 o ADMIN_PASSWORD en .env
- Al entrar, se desbloquea la web, va a Inicio y se marca ADMIN.
- Se quitan paneles/admin resultados externos.
- En cada partido aparece un único editor simple:
  [goles local] - [goles visitante] Guardar
- Guardar usa /api/tel-final/save-result y escribe en data.json.
- Recalcula liga y copas.
- No depende de Discord ni del login antiguo.

Importante:
Después de instalar, borra datos del sitio localhost o usa Ctrl+F5.
