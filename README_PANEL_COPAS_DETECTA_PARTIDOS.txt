FIX PANEL COPAS DETECTA PARTIDOS

Corregido:
- El panel /panel-copas.html ya no se queda en 0 si la fase no está marcada igual en data.json.
- Cuartos detecta ronda/fase/cuarto/round/jornada o usa fallback primeros 4 partidos.
- Semifinales usa fallback partidos 5-6.
- Final usa fallback partido 7.
- Añadidos campos rondaRaw/rondaNombre/fase/nombreRonda al endpoint para detección.
