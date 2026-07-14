THUNDER ELITE LEAGUE - WEB + BOT ADAPTADO

Qué incluye:
- index.html y partidos.html de la web.
- index.js del bot Discord.
- deploy-commands.js con 26 comandos slash.
- server.js para servir la web y exponer datos del bot.
- commands.json generado desde deploy-commands.js.
- data.json compatible con el bot.
- .env.example preparado con las variables de tu env.

IMPORTANTE:
No he incluido tu TOKEN real ni tus secretos dentro del ZIP por seguridad.
Copia .env.example como .env y pon ahí tu TOKEN, WEB_ADMIN_PASSWORD y WEB_SESSION_SECRET.

Instalación:
1. Abre terminal en esta carpeta.
2. Ejecuta:
   npm install

3. Copia el env:
   Windows:
   copy .env.example .env

   Linux/Mac:
   cp .env.example .env

4. Edita .env y rellena TOKEN y secretos.

5. Registrar comandos en Discord:
   npm run deploy

6. Iniciar solo la web:
   npm run web

7. Iniciar solo el bot:
   npm run bot

8. Iniciar web + bot:
   npm start

La web se abrirá normalmente en:
http://localhost:3000

Endpoints añadidos:
- /api/health
- /api/data
- /api/clubes
- /api/jugadores
- /api/sanciones
- /api/comandos

Notas:
- El bot seguirá guardando todo en data.json.
- La web puede leer data.json mediante server.js.
- Si abres index.html directamente sin server.js, la web sigue funcionando en modo estático.

SOLUCIÓN ERROR CANVAS EN WINDOWS
Esta versión NO instala canvas, porque en Windows con Node v24 suele fallar al compilar.

Pasos recomendados:
1. Borra node_modules si existe:
   rmdir /s /q node_modules

2. Borra package-lock.json si existe:
   del package-lock.json

3. Instala:
   npm install

4. Copia el env:
   copy .env.example .env

5. Rellena TOKEN en .env

6. Registra comandos:
   npm run deploy

7. Inicia:
   npm start

Nota:
El bot funcionará sin canvas. Solo quedan desactivadas las imágenes generadas con canvas, si tu bot las usaba.

EQUIPOS DINÁMICOS
La sección Equipos ya no contiene clubes escritos a mano.
Ahora lee los equipos desde:
- /api/clubes si ejecutas npm start
- data.json como respaldo

Cuando uses /crear-club en Discord, el bot guarda el club en data.json.
La web refresca la sección Equipos automáticamente cada 5 segundos.

Para que esto funcione en tiempo real, abre la web con:
npm start
y entra a:
http://localhost:3000

DATOS REALES DEL DATA.JSON
He sustituido el data.json de ejemplo por el archivo proporcionado.
La web ahora rellena Equipos, Clasificación rápida, Clasificación, Próximos partidos, Resultados y Calendario desde data.json.
La competición principal usada es la liga activa "Élite League".
Si el bot añade clubes, jugadores, partidos o resultados en data.json, la web se actualiza automáticamente cada 5 segundos al abrirla con npm start.

LOGOS / ESCUDOS
La web ahora carga los escudos reales desde data.json usando el campo escudoUrl.
Para evitar fallos de carga directa desde Discord, server.js incluye:
  /api/logo?url=URL_DEL_ESCUDO

Clubes con escudoUrl detectados en data.json: 18/18

Importante:
Abre la web con npm start y entra en http://localhost:3000.
Si abres index.html directamente, algunos logos externos pueden no cargar porque no pasa por el proxy local.

LIGAS DINÁMICAS
El botón "Todas las ligas" ya no es decorativo.
Ahora lee las ligas/competiciones desde data.json y filtra los equipos según la liga elegida.

Endpoints:
- /api/ligas
- /api/clubes?liga=ID_DE_LIGA

Para probarlo bien:
npm start
http://localhost:3000

FIX LOGOS EN EQUIPOS Y CLASIFICACIÓN
- Los equipos ya no muestran el bloque de "No hay equipos" si hay clubes en data.json.
- Los escudos se cargan desde escudoUrl mediante /api/logo.
- Clasificación también usa los escudos reales del data.json.
- Si una imagen externa falla, se muestra el emoji del club como respaldo.

Recuerda abrir con:
npm start
http://localhost:3000

LOGOS LOCALES
Los escudos están dentro del ZIP en public/escudos/.
El data.json usa rutas locales /escudos/archivo.png para evitar enlaces caducados de Discord.

Ejecuta:
npm install
npm start

Abre:
http://localhost:3000

Haz Ctrl + F5 si el navegador conserva la versión anterior.

ESCUDOS CORREGIDOS
Se ha usado el ZIP "Thunder Elite League - copia.zip" solo como fuente de:
- data.json
- carpeta escudos/

Tu web conserva su interfaz actual.

Los escudos están ahora en:
public/escudos/

El data.json usa rutas locales:
"/escudos/nombre-del-escudo.png"

Ejecuta:
npm install
npm start

Abre:
http://localhost:3000

Haz Ctrl + F5 si el navegador tiene caché.

SIN REINICIO VISUAL DE EQUIPOS
Se han desactivado los refrescos automáticos tipo setInterval que repintaban logos/equipos/clasificación cada pocos segundos.

Ahora:
- Los equipos cargan al abrir la página.
- Los escudos cargan una vez.
- Se actualiza al cambiar de sección o al recargar.
- Ya no debe verse el parpadeo/reinicio visual.

Para ver cambios:
npm start
http://localhost:3000
Ctrl + F5

VERSION BASADA EN EL ZIP SUBIDO
- Se usa como base TEL_WEB_LOGOS_NO_MENU_FINAL_PLANO(1)(1).zip.
- Se conservan sus secciones originales: Partidos/Resultados, Clasificación y Noticias.
- Se mantienen data.json y escudos locales.
- Se elimina solo el dropdown falso antiguo (.dropdown-pop), dejando el menú de ligas.
- El bot no cierra la web si el token de Discord está mal.

Ejecuta:
npm install
npm start

Abre:
http://localhost:3000

Haz Ctrl + F5.


MENU DINAMICO DE LIGAS
El botón "Todas las ligas" ahora se genera desde data.json.
Muestra:
- Todas las ligas
- Cada liga/competición del data.json
- Número de equipos inscritos en cada liga
- Lista desplegable de los equipos inscritos dentro de cada liga

También filtra las cards/equipos visibles al seleccionar una liga.


INSCRIPCION ELIMINADA
Se ha quitado la sección de inscripción y los enlaces a #inscripcion.
La web queda con el menú de ligas y equipos, sin pantalla de inscripción.


CLASIFICACION LIGAS + JORNADAS FINAL
En la sección Clasificación ahora aparecen dos desplegables propios:
- Todas las ligas: lista todas las competiciones del data.json y muestra el número de equipos.
- Jornada: permite elegir todas las jornadas o una jornada concreta.

Al seleccionar una liga, la tabla se actualiza con la clasificación/equipos de esa liga.
Al seleccionar una jornada, calcula la clasificación acumulada hasta esa jornada si hay resultados en data.json.


SIN REINICIO DE EQUIPOS
Se han quitado los refrescos automáticos que repintaban equipos/logos/clasificación cada cierto tiempo.

Ahora:
- Los equipos cargan al abrir la sección.
- No se reinician solos cada pocos segundos.
- Se actualiza al cambiar de sección/hash o al recargar la web.


REFRESCOS AUTOMATICOS QUITADOS
Se quitó el culpable principal:
setInterval(applyRealData, 5000);

También se desactivaron otros setInterval relacionados con:
- equipos
- logos/escudos
- clasificación
- refreshDynamicTeams
- renderAllTeams

Ahora la web no repinta los equipos cada pocos segundos.


SECCION JUGADORES ELIMINADA - CAMBIO MINIMO
Se eliminó únicamente:
- El bloque HTML de la sección #jugadores
- Los enlaces/botones visibles hacia #jugadores

No se modificaron routers, arrays de navegación ni scripts principales para evitar romper la web.


VISTA PREVIA DE PARTIDOS
Se añadió la sección #partido-preview.
Al pulsar "Ver previa" en un partido, abre una pantalla con:
- Equipo local y visitante reales
- Escudos reales desde data.json
- Jornada, fecha, hora y estadio
- Forma reciente
- Comparativa
- Clasificación rápida de la competición
- Próximos partidos de la jornada

No se añadieron refrescos automáticos.


VISTA PREVIA CLICK FIX
Se corrigió el botón "Ver previa" con captura directa del click.
Ahora no depende del router viejo ni de que el botón exista al cargar la página.
Al pulsarlo, fuerza la sección #partido-preview y carga los datos reales desde data.json.


FIX PREVIA OCULTA
La sección #partido-preview queda totalmente oculta en inicio, partidos, clasificación, equipos, reglamento, noticias, tienda y contacto.
Solo aparece cuando el hash es #partido-preview o al pulsar "Ver previa".


PREVIA OVERLAY FINAL
Se eliminó completamente la sección #partido-preview del HTML, que era la que aparecía abajo en todas las secciones.
Ahora la previa se crea como overlay fijo solo al pulsar "Ver previa".
No ocupa espacio en la página y no puede aparecer abajo.


MARCA DE AGUA ATLAS CREATIVE
Se añadió un sello fijo y discreto abajo a la derecha:
"Desarrollado por Atlas Creative"
con el logo proporcionado en assets/atlas-creative-watermark.png.
