# Contrato de despliegue

La plantilla no implementa un despliegue. Este archivo define un checklist neutral respecto del proveedor para completar cuando la aplicación esté lista para publicarse.

## Requisitos para la primera publicación

- [ ] El build reproducible y los tests automatizados pasan desde la raíz.
- [ ] CI valida exactamente el commit que se publicará.
- [ ] Se producen artefactos inmutables o identificables sin ambigüedad.
- [ ] Los secretos y la configuración del ambiente permanecen fuera de los artefactos y del control de versiones.
- [ ] Los cambios de esquema tienen una estrategia explícita y probada de ejecución y fallo.
- [ ] Los datos persistentes tienen backups, retención y restauración probada.
- [ ] Los health checks y logs permiten demostrar si la versión resulta utilizable.
- [ ] El rollback de aplicación y la restauración de datos se tratan como operaciones separadas.
- [ ] La topología real y los procedimientos operativos se guardan de forma privada.

## Flujo de publicación

Documentar antes de la primera entrega la promoción de ramas, autorizaciones, evidencia de CI, disparador de despliegue, verificación y rollback aprobados.
