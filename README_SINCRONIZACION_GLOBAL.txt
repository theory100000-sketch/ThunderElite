THUNDER ELITE LEAGUE · AUTOGUARDADO Y SINCRONIZACIÓN GLOBAL

Se ha ampliado la sincronización a toda la web:

- Resultados de liga y copa.
- Fechas y horarios.
- Clasificaciones recalculadas.
- Cuadros de copa, semifinales, final y campeón.
- Calendario y próximos partidos.
- Equipos y participantes.
- Competiciones y configuración.
- Resumen del panel de administración.

FUNCIONAMIENTO

1. Los cambios se guardan en el data.json del servidor.
2. El servidor recalcula las clasificaciones y el avance de las copas.
3. El servidor avisa a todos los navegadores conectados mediante SSE.
4. Las páginas públicas se actualizan automáticamente.
5. Los paneles de administración se refrescan sin pulsar “Sincronizar”.
6. Existe una comprobación alternativa cada 3,5 segundos si SSE no está disponible.

AUTOGUARDADO

- Panel de resultados: marcador, fecha y hora.
- Panel de copas: marcador, fecha y hora.
- Panel de competiciones: datos de la competición y participantes.

IMPORTANTE

Todos los usuarios deben entrar en la misma dirección del servidor publicado.
Si cada persona ejecuta una copia diferente en su propio localhost, cada copia tendrá datos independientes.
