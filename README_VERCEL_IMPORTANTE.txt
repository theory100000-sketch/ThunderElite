CORRECCIÓN DEFINITIVA DEL BLOQUEO DE NPM EN VERCEL

La web y el bot ya no comparten el mismo package.json:
- La raíz solo instala Express, express-session y dotenv.
- Discord.js está dentro de /bot y Vercel lo excluye del despliegue.
- Se eliminó package-lock.json para evitar reutilizar el lock problemático.

ANTES DE VOLVER A DESPLEGAR:
1. Sube EL CONTENIDO del ZIP directamente a la raíz del repositorio.
   package.json y vercel.json deben verse en la primera pantalla de GitHub.
2. En Vercel > Settings > Build and Deployment:
   - Root Directory: déjalo vacío (./)
   - Framework Preset: Other
   - Node.js Version: 20.x
3. Haz Redeploy SIN caché.

El log debe instalar solo 3 dependencias directas de la web.
El bot no puede permanecer conectado 24/7 dentro de Vercel; ejecútalo localmente
con INICIAR_LOCALHOST.bat o alójalo en un servicio de procesos persistentes.
