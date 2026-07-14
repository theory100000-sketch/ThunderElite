CORRECCIÓN DE INSTALACIÓN EN VERCEL

1. Se cambiaron todas las URLs internas del package-lock.json por https://registry.npmjs.org/.
2. Se fijó Node.js 20.x para evitar el error de npm "Exit handler never called".
3. Vercel usará npm ci de forma determinista.
4. Se añadió .npmrc con reintentos y el registro público de npm.

En Vercel, borra el Build Cache y vuelve a desplegar.

IMPORTANTE: el bot de Discord necesita un proceso permanente. La web Express puede desplegarse en Vercel, pero el bot no debe depender de que una función de Vercel quede encendida todo el tiempo. Para el bot usa un host persistente (por ejemplo Railway, Render o un VPS) y conecta ambos a una base de datos externa.
