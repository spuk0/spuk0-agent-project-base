# Checklist de proyecto nuevo

## Identidad y alcance

- [ ] Ejecutar `scripts/initialize.ps1` y confirmar que no queden marcadores `{{...}}` fuera de las plantillas.
- [ ] Definir problema, actores, alcance actual, exclusiones y vocabulario compartido.
- [ ] Separar el primer resultado útil del roadmap a largo plazo.

## Repositorio

- [ ] Confirmar la rama predeterminada y crear `development` si se usa el flujo recomendado de dos ramas.
- [ ] Configurar visibilidad, accesos, protección de ramas y escaneo de secretos.
- [ ] Confirmar si los pull requests son obligatorios y documentar la regla real.

## Desarrollo

- [ ] Registrar requisitos y comandos raíz verificados.
- [ ] Hacer que build y tests fallen visiblemente ante el fallo de un componente obligatorio.
- [ ] Agregar ejemplos ficticios de configuración y mantener secretos reales en almacenamiento local.

## Flujo de producto

- [ ] Registrar el primer objetivo y la primera feature.
- [ ] Crear un solo plan activo con criterios de cierre medibles.
- [ ] Mantener el manual vacío hasta verificar comportamiento.

## Arquitectura y operación

- [ ] Documentar límites de dependencias antes de agregar referencias entre módulos.
- [ ] Decidir autenticación, autorización, persistencia e integraciones únicamente cuando una feature las requiera.
- [ ] Diferir proveedor y topología de producción hasta preparar la publicación, salvo que el código dependa de ellos.
