# Perfiles de inicio

La plantilla documental sirve para los tres perfiles. Lo que cambia es la profundidad arquitectónica, las garantías exigidas y el trabajo operativo inicial. No conviene mantener tres repositorios base separados: se desactualizarían y duplicarían reglas comunes.

## Comparación

| Perfil | Cuándo usarlo | Arquitectura inicial | Prioridad |
|---|---|---|---|
| `lean-mvp` | Idea todavía no validada, pero con intención real de lanzarla rápidamente | Monolito simple organizado por features o vertical slices, una base de datos y abstracciones solo donde exista un límite externo real | Tiempo hasta aprender del mercado |
| `product-mvp` | Problema y demanda validados; el MVP debe poder evolucionar sin rehacerse | Monolito modular; Clean Architecture completa cuando el dominio, las integraciones o las pruebas justifican sus capas | Solidez sin perder velocidad |
| `client-project` | Trabajo contratado con alcance, responsables y obligaciones conocidas | Monolito modular con límites explícitos, seguridad y trazabilidad acordes al contrato; onboarding cerrado por defecto | Previsibilidad, seguridad y mantenibilidad |

## 1. `lean-mvp`

Adecuado para una apuesta rápida, gratuita o paga, cuyo principal riesgo es que nadie la necesite. La documentación base sigue siendo útil porque evita perder decisiones, pero debe completarse de forma breve.

Configuración recomendada:

- una aplicación desplegable y una base de datos;
- módulos o carpetas por feature;
- reglas de negocio cerca del caso de uso;
- acceso a datos directo y comprensible;
- interfaces únicamente para límites externos que realmente puedan variar, como pagos, email o IA;
- tests sobre recorridos críticos, cobros y reglas que puedan causar pérdidas;
- observabilidad y despliegue mínimos, suficientes para detectar un fallo real.

No crear proyectos separados de Domain, Application e Infrastructure solo para anticipar crecimiento. Si el producto se valida, sus módulos proporcionan puntos naturales para extraer límites más fuertes.

## 2. `product-mvp`

Adecuado cuando la demanda ya fue validada y el costo de rehacer reglas, datos o integraciones sería significativo. Sigue siendo un MVP: debe entregar el menor producto útil, no toda la arquitectura imaginable.

Configuración recomendada:

- monolito modular con dependencias explícitas;
- modelo de dominio separado cuando existan reglas no triviales;
- casos de uso aislados de detalles de persistencia o proveedores cuando eso facilite pruebas y reemplazos;
- migraciones, CI y estrategia de errores desde el inicio;
- seguridad, aislamiento de datos y auditoría definidos por los riesgos del producto;
- Clean Architecture completa si sus límites protegen complejidad existente, no complejidad hipotética.

## 3. `client-project`

Adecuado cuando existe un contrato y el riesgo principal es incumplir alcance, seguridad, fechas u operación. El registro público no se presume: las cuentas suelen crearse por invitación, importación o administración hasta que el contrato diga lo contrario.

Configuración recomendada:

- alcance y criterios de aceptación trazables;
- monolito modular y límites de dependencia verificables;
- autenticación, roles, propiedad de datos y auditoría acordados explícitamente;
- configuración por ambiente, backups y recuperación proporcionados al impacto del cliente;
- pruebas de aceptación sobre los recorridos comprometidos;
- decisiones operativas documentadas antes de la entrega, aunque se difieran durante los primeros incrementos de código.

## Cuándo compensa Clean Architecture

Considerarla seriamente cuando existan dos o más de estas señales:

- reglas de dominio no triviales o que cambian con frecuencia;
- múltiples proveedores o integraciones externas;
- necesidad real de probar casos de uso sin infraestructura;
- más de una interfaz de entrada, como web, API pública y procesos programados;
- horizonte de mantenimiento prolongado o varios colaboradores;
- requisitos contractuales, regulatorios, de auditoría o aislamiento de datos.

Preferir una estructura más directa cuando predominen estas condiciones:

- el riesgo principal es validar demanda;
- el producto es mayormente CRUD;
- existe una sola base de datos y un solo canal de entrada;
- el dominio todavía cambiará al aprender de usuarios;
- las capas agregarían delegaciones sin proteger una regla o dependencia concreta.

## Agentes y complejidad

Los agentes reducen el costo de escribir archivos, interfaces, tests y adaptadores. No eliminan el costo de navegar más capas, entender contratos, depurar flujos indirectos, mantener abstracciones ni migrar decisiones equivocadas. Por eso la regla continúa siendo: usar la arquitectura más pequeña que preserve los límites y riesgos reales del proyecto.

Para la mayoría de estos escenarios, el punto de partida razonable es un monolito. Los microservicios se justifican después por independencia operativa, escala desigual, límites organizacionales o requisitos de aislamiento; no porque resulte fácil generarlos.
