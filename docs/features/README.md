# Features

Las features describen **qué capacidad necesita el producto**, por qué importa y cómo se verificará su finalización.

## Estados

- `nueva`: documentada pero no iniciada.
- `activa`: actualmente en implementación.
- `bloqueada`: no puede avanzar sin una decisión o dependencia externa.
- `finalizada`: criterios de aceptación verificados con evidencia del repositorio.
- `cancelada`: abandonada intencionalmente, conservando su historia.

## Índice

| ID | Feature | Objetivo | Estado | Área | Revisión |
|---|---|---|---|---|---|
| — | Sin features registradas | — | — | — | — |

## Cómo agregar una feature

1. Asignar el siguiente identificador estable `FTR-###`.
2. Copiar [feature-template.md](feature-template.md) sin modificar la plantilla original.
3. Enlazar objetivos, dependencias, criterios de aceptación y evidencia.
4. Agregar la feature a este índice.
5. Actualizar arquitectura, manual, desarrollo y producto afectados en el mismo cambio.
