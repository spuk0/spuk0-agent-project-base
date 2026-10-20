# Infraestructura

Este documento registra restricciones que afectan reglas de negocio, arquitectura, seguridad o código. El proveedor, la topología y los procedimientos de producción pueden diferirse hasta que la aplicación esté lista para publicarse.

## Ambientes actuales

| Ambiente | Propósito | Estado |
|---|---|---|
| Local | Desarrollo y verificación automatizada | Definir con el primer plan de implementación |
| Producción | Uso real | Diferido hasta preparar la publicación |
| Staging | Reducir riesgos cuando la escala lo justifique | Opcional y diferido |

## Decisiones requeridas por el código

Registrar decisiones de base de datos, identidad, autorización, almacenamiento, integraciones y aislamiento cuando una feature las necesite.

## Decisiones operativas diferidas hasta la publicación

- Proveedor de hosting y topología real.
- Dominio, certificados y producto concreto de proxy.
- Credenciales de despliegue y procedimientos privados.
- Proveedor de monitoreo y responsables de alertas.
- Destino de backups y procedimiento de recuperación ante desastres.

## Base de seguridad

- No versionar secretos ni identificadores reales de ambientes.
- Aplicar la autorización en el backend, no solamente ocultarla en la interfaz.
- Minimizar y documentar logs y datos de auditoría sensibles.
- Exigir decisiones explícitas de recuperación, retención e incidentes antes de una producción pública.
