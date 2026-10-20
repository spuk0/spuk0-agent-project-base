# {{PROJECT_NAME}}

{{PROJECT_DESCRIPTION}}

## Estado

Proyecto inicializado desde `spuk0-project-base`. Antes de implementar funcionalidades, completar la [lista de inicio](docs/checklists/new-project.md) y actualizar este README con comandos comprobados.

## Documentación

La documentación está indexada en [docs/README.md](docs/README.md). Las fuentes principales son:

- [Alcance del proyecto](docs/project.md)
- [Perfiles de inicio](docs/project-profiles.md)
- [Visión de producto](docs/product-vision.md)
- [Arquitectura](docs/architecture.md)
- [Desarrollo local](docs/development.md)
- [Features](docs/features/README.md)
- [Planes](docs/plans/README.md)
- [Decisiones arquitectónicas](docs/decisions/README.md)
- [Manual](docs/manual.md)
- [Infraestructura](docs/infrastructure.md)
- [Despliegue](docs/deploy.md)

## Uso recomendado con un agente

La forma preferida de utilizar esta plantilla es pedirle al agente que prepare el proyecto y presentar para revisión solamente las decisiones que afecten negocio o código. Un pedido inicial puede ser:

> Usá `spuk0-project-base` para iniciar este proyecto. Elegí y justificá uno de sus perfiles, ejecutá el inicializador, completá la documentación mínima con evidencia y consultame únicamente las decisiones de negocio o código que cambien el producto.

El agente deberá generar o clonar el repositorio, ejecutar el script, completar el checklist, proponer el primer objetivo y mantener un solo plan activo. Crear ramas, commits, remotos o pushes seguirá requiriendo el alcance y las autorizaciones correspondientes.

## Uso manual

En una copia nueva, ejecutar:

```powershell
.\scripts\initialize.ps1 `
  -ProjectName "Mi proyecto" `
  -ProjectSlug "mi-proyecto" `
  -Description "Descripción breve" `
  -Profile "lean-mvp"
```

Los perfiles disponibles son `lean-mvp`, `product-mvp` y `client-project`; están explicados en [docs/project-profiles.md](docs/project-profiles.md). El script reemplaza los marcadores de identidad en la documentación. Después, revisar y completar los campos pendientes; nunca publicar secretos, rutas personales ni detalles privados de producción.

## Ramas

- `main`: versión estable o publicable.
- `development`: integración y desarrollo habitual.

La política concreta de CI, promoción y pull requests debe confirmarse en `AGENTS.md` y `docs/development.md` antes del primer cambio funcional.
