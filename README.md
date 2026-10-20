# {{PROJECT_NAME}}

{{PROJECT_DESCRIPTION}}

## Estado

Proyecto inicializado desde `spuk0-project-base`. Antes de implementar funcionalidades, completar la [lista de inicio](docs/checklists/new-project.md) y actualizar este README con comandos comprobados.

## Documentación

La documentación está indexada en [docs/README.md](docs/README.md). Las fuentes principales son:

- [Alcance del proyecto](docs/project.md)
- [Visión de producto](docs/product-vision.md)
- [Arquitectura](docs/architecture.md)
- [Desarrollo local](docs/development.md)
- [Features](docs/features/README.md)
- [Planes](docs/plans/README.md)
- [Decisiones arquitectónicas](docs/decisions/README.md)
- [Manual](docs/manual.md)
- [Infraestructura](docs/infrastructure.md)
- [Despliegue](docs/deploy.md)

## Uso de esta plantilla

En una copia nueva, ejecutar:

```powershell
.\scripts\initialize.ps1 -ProjectName "Mi proyecto" -ProjectSlug "mi-proyecto" -Description "Descripción breve"
```

El script reemplaza los marcadores de identidad en la documentación. Después, revisar y completar los campos pendientes; nunca publicar secretos, rutas personales ni detalles privados de producción.

## Ramas

- `main`: versión estable o publicable.
- `development`: integración y desarrollo habitual.

La política concreta de CI, promoción y pull requests debe confirmarse en `AGENTS.md` y `docs/development.md` antes del primer cambio funcional.
