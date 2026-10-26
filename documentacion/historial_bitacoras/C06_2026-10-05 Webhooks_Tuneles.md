---
tipo: bitacora-clase
curso:
periodo: EAM-2026II
equipo: Gutierrez-Rios-Martinez-Aguilera
corte: 2
semana: "2"
clase: "6"
fecha: 2026-10-05
estado: en-progreso
tags:
  - n8n
  - bitacora
---

# Bitácora — Clase [6]

> [!tip] Cómo usar esta plantilla
> Duplica esta nota al finalizar cada clase y nómbrala `C##_AAAA-MM-DD_Tema`. Completa los campos entre corchetes y conserva enlaces verificables.

## 1. Datos de la sesión

| Campo    | Registro                                                                            |
| -------- | ----------------------------------------------------------------------------------- |
| Tema     | Webhooks y comunicación  <br>entre sistemas                                         |
| Objetivo | Implementar Webhooks para recibir información externa e integrarla al flujo de n8n. |
| Proyecto | Gestión de inventarios                                                              |
| Inicio   | 6:50pm                                                                              |
| Cierre   | 10:00pm                                                                             |

## 2. Participación y responsabilidades

| Integrante             | Asistió | Rol de la clase   | Responsabilidad asumida                                                                                                   | Aporte verificable                   |
| ---------------------- | :-----: | ----------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------ |
| Jorge Luis Martinez    |   Sí    | Constructor.      | Construir y ejecutar el workflow, verificando que la condición permitiera identificar el escenario de stock insuficiente. | ![[Pasted image 20260928200719.png]] |
| Maicol Andres Aguilera |   Sí    | Monitor y tester. | Monitorear la ejecución del flujo y realizar pruebas para comprobar su funcionamiento.                                    | ![[Pasted image 20260928200722.png]] |
| Valentina              |   Sí    | Documentadora.    | Registrar y documentar el flujo, los roles, las tareas y los requerimientos de la actividad.                              | ![[Pasted image 20260928200724.png]] |
| Gabriela Rios Huertas  |   Sí    | Coordinadora.     | Distribuir las tareas del equipo y realizar el seguimiento mediante Scrum.                                                | ![[Pasted image 20260928200726.png]] |

## 3. Reto aplicado al proyecto

### Funcionalidad trabajada

**Proceso:** Gestión de inventario.

Se trabajó en la integración de información externa mediante un **Webhook**, con el propósito de incorporar los datos recibidos al flujo de gestión de inventario en n8n.

### Criterios de aceptación

- [x] El Webhook debe recibir correctamente una petición HTTP con los datos correspondientes al producto y su información de inventario.
- [x] El workflow debe procesar los datos recibidos, calcular el faltante y determinar si el producto necesita reposición.
- [x] El workflow debe clasificar la prioridad del producto y generar el resultado correspondiente para el escenario de stock insuficiente.

### Archivos o componentes modificados

-![[Pasted image 20260928200929.png]]


## 4. Decisiones técnicas

| Decisión      | Razón                                                                                                  | Alternativa descartada                  |
| ------------- | ------------------------------------------------------------------------------------------------------ | --------------------------------------- |
| base de datos | supabase                                                                                               | base de datos local                     |
| Webhook HTTP  | Permite que el sistema de inventario reciba información desde otro sistema mediante una petición HTTP. | Ingreso únicamente manual dentro de n8n |

## 5. Problemas y soluciones

| Problema encontrado                                                         | Causa identificada                                                                            | Solución aplicada                                                                         | ¿Cómo se verificó?                                                                           |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| URL mal enrutada                                                            | 404                                                                                           | rectificacion UL                                                                          | prueba                                                                                       |
| Diferencia entre los datos enviados y los campos utilizados por el workflow | Los datos recibidos por un Webhook GET se encuentran dentro de los parámetros de la petición. | Se adaptó la transformación de los datos antes de continuar con la lógica del inventario. | Se revisó el Output del Webhook y posteriormente la ejecución de los nodos de procesamiento. |

## 6. Evidencias

| Tipo    | Descripción                  | Enlace o ruta   |
| ------- | ---------------------------- | --------------- |
| Commit  | [Cambio principal]           | [URL o hash]    |
| Captura | [Qué demuestra]              | [Ruta relativa] |
| Demo    | [Funcionalidad ejecutándose] | [URL]           |
| Código  | [Fragmento relevante]        | [Ruta y líneas] |

## 7. Uso de inteligencia artificial

> [!important] Registrar la IA no reemplaza la explicación técnica. El equipo debe verificar, adaptar y comprender cualquier resultado utilizado.

| Herramienta | Objetivo o pregunta | Qué se utilizó | Cómo se verificó | Qué se modificó |
| ----------- | ------------------- | -------------- | ---------------- | --------------- |
| LLM         | Error 404           | LLM            | Correccion       | Error           |

Si no se utilizó IA, escribir: **No se utilizó inteligencia artificial en esta sesión.**

## 8. Defensa técnica y retroalimentación

| Campo                     | Registro                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Integrante que defendió   | [Nombre]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Pregunta recibida         | 1¿Qué ocurrió en el sistema emisor, a qué dirección envió el aviso y dónde recibió n8n los datos?                                             2¿Qué procesó el workflow y qué resultado devolvió?                 3                                                                                                                                                                                                                                                                                                                                                 |
| Respuesta resumida        | 1.El sistema emisor realizó una petición HTTP hacia el Webhook. En nuestra prueba utilizamos la URL de prueba del Webhook, por ejemplo:http://localhost:5678/webhook-test/inventario                                                                                             2.El workflow recibió los datos del inventario y posteriormente los procesó para determinar si el producto necesitaba reposición,despues se determina la prioridad y se clasifica                                                                                               3. |
| Retroalimentación docente | [Observación]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Mejora acordada           | [Acción concreta]                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

## 9. Aprendizajes

- **Concepto comprendido:** webhoo
- **Algo que aún genera duda:** [Duda pendiente]
- **Qué haríamos diferente:** [Mejora del proceso]

## 10. Revisión antes de entregar

- [x] Todos los integrantes registraron un aporte verificable.
- [x] Los enlaces y rutas de evidencia funcionan.
- [x] Los criterios de aceptación están actualizados.
- [x] El uso de IA fue declarado y verificado.
- [x] El equipo puede explicar las decisiones registradas.

