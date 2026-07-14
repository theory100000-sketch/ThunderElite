THUNDER ELITE LEAGUE - SINCRONIZACION DISCORD <-> WEB
=====================================================

Esta version conecta los comandos del bot con los datos que muestra la web.
El bot y la web deben ejecutarse desde la misma carpeta y usar el mismo data.json.

INICIO
------
1. Completa el archivo .env con TOKEN, CLIENT_ID, GUILD_ID y los roles/canales.
2. Ejecuta ACTUALIZAR_COMANDOS_DISCORD.bat una vez para registrar las nuevas opciones.
3. Ejecuta INICIAR_LOCALHOST.bat. Este archivo inicia A LA VEZ la web y el bot.

COMANDOS SINCRONIZADOS
----------------------
/crear-club
- Crea el equipo en Discord y en la web.
- Descarga el escudo a public/escudos para que no se pierda ni caduque.
- Añade presidente y vicepresidentes a la plantilla de la web.

/borrar-club
- Elimina el club, su plantilla y sus apariciones en las competiciones de la web.

/editar-club
- Actualiza nombre, color y escudo en Discord y en la web.
- Si cambia el nombre, también se actualiza en las competiciones.

/añadir-jugador
- Añade al jugador a la plantilla web.
- La ID de Discord aparece como ID del jugador.
- La opción id_ea_psn permite guardar su ID de EA o PSN.

/quitar-jugador
- Lo elimina de la plantilla y actualiza el número de jugadores.

/fichar
- Cuando el fichaje se completa, mueve al jugador al nuevo club.
- Actualiza las dos plantillas y los presupuestos.
- La opción id_ea_psn permite guardar o actualizar la ID EA/PSN.

/asignar-presupuesto, /añadir-dinero, /quitar-dinero y /sancionar-club
- Actualizan el presupuesto de la ficha del equipo automáticamente.

FICHA DE EQUIPO
---------------
En la sección Equipos, pulsa una tarjeta o "Ver equipo" para abrir la ficha completa:
- escudo;
- presupuesto;
- presidente;
- jugadores registrados;
- ID de Discord;
- ID EA / PSN;
- estado;
- estadísticas reales de la liga.

La web recibe los cambios en tiempo real mediante /api/live-updates. Normalmente aparecen
en menos de un segundo sin actualizar manualmente la página.
