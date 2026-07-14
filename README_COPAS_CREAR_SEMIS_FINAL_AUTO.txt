COPAS: CREAR SEMIFINALES Y FINAL AUTOMÁTICAMENTE

Problema corregido:
El cuadro mostraba huecos de semifinal/final visuales, pero en data.json no existían partidos reales para semifinal y final.
Por eso los ganadores de cuartos no tenían dónde pasar.

Ahora:
- Si una copa tiene 4 cuartos, se crean 2 semifinales reales.
- Si hay 2 semifinales, se crea 1 final real.
- QF1 + QF2 pasan a Semifinal 1.
- QF3 + QF4 pasan a Semifinal 2.
- SF1 + SF2 pasan a la Final.
- Botón visible: RECALCULAR Y PASAR GANADORES.

Uso:
1) Entra como admin.
2) Ve a la copa.
3) Pulsa RECALCULAR Y PASAR GANADORES.
