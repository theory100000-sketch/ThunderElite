RESULTADOS GLOBALES AUTOMÁTICOS

Añadido:
- Al editar un resultado se guarda en data.json.
- El mismo partido aparece actualizado en todos los sitios tras recargar.
- La clasificación recalcula automáticamente:
  PJ, PG, PE, PP, GF, GC, DG, PTS.
- Puntos:
  victoria = 3
  empate = 1
  derrota = 0
- En copas:
  no permite empate;
  ganador de cuartos pasa a semifinal;
  ganador de semifinal pasa a final;
  ganador de final se guarda como campeón.
- También se pueden editar resultados de copas.

Endpoints nuevos:
POST /api/admin/resultado-global
POST /api/admin/resultado-global/reset
GET /api/admin/data-fresh
