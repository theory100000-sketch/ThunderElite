FIX FINAL GUARDAR RESULTADO

Corregido:
- Nuevo endpoint /api/admin/guardar-resultado-final.
- Guarda directamente en data.json.
- Recalcula clasificación liga:
  victoria 3, empate 1, derrota 0, GF, GC, DG, PTS.
- Recalcula copa:
  crea semifinal/final si faltan;
  pasa ganadores;
  no permite empate.
- Frontend usa este endpoint final.
- Modal se cierra al guardar y recarga suave para repintar datos guardados.
