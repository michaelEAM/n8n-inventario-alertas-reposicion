---
tipo: bitacora-clase
curso:
periodo: EAM-2026II
equipo: Gutierrez-Rios-Martinez-Aguilera
corte: 1
semana: "3"
clase: "4"
fecha: 2026-09-07
estado: en-progreso
tags:
  - n8n
  - bitacora
---

# Bitácora — Clase [4]

> [!tip] Cómo usar esta plantilla
> Duplica esta nota al finalizar cada clase y nómbrala `C##_AAAA-MM-DD_Tema`. Completa los campos entre corchetes y conserva enlaces verificables.

## 1. Datos de la sesión

| Campo    | Registro                                                                                                                                                      |
| -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Tema     | Automatización de control y reposición de inventario con n8n                                                                                                  |
| Objetivo | Construir un flujo que compare el stock de la tienda con el de la bodega, identifique productos que necesitan reposición y determine la cantidad a trasladar. |
| Proyecto | Automatización de inventario tienda-bodega                                                                                                                    |
| Inicio   | 6:00pm                                                                                                                                                        |
| Cierre   | 10:00pm                                                                                                                                                       |

## 2. Participación y responsabilidades

| Integrante                 | Asistió | Rol de la clase   | Responsabilidad asumida                                          | Aporte verificable                       |
| -------------------------- | :-----: | ----------------- | ---------------------------------------------------------------- | ---------------------------------------- |
| Jorge Luis Martinez        |   Sí    | Constructor.      | Configurar los nodos principales del workflow.                   | ![[Pasted image 20260913215642.png]]     |
| Maicol Andres Aguilera     |   Sí    | Monitor y tester. | Probar diferentes cantidades de inventario y validar resultados. | ![[Pasted image 20260913215629.png]]     |
| Valentina Gutierrez Bedoya |   Sí    | Documentadora.    | Documentar el proceso, evidencias y resultados.                  | ![[Pasted image 20260913215717.png]]<br> |
| Gabriela Rios Huertas      |   Sí    | Coordinadora.     | Coordinar la definición del flujo y validar el objetivo.         | ![[Pasted image 20260913215723.png]]<br> |

## 3. Reto aplicado al proyecto

### Funcionalidad trabajada

**Proceso:** Gestión de inventario.
Se diseñó un flujo en n8n para consultar y comparar las existencias de productos en la tienda y en la bodega. El flujo identifica los productos que requieren reposición y calcula la cantidad que se debe trasladar desde la bodega hacia la tienda. El resultado se organiza en un reporte con código, nombre, stock de tienda, stock de bodega y cantidad a traer.
**Archivos o componentes modificados**

- Workflow de n8n: Manual Trigger → Edit Fields → Switch → Edit Fields.

- Nodo Switch: reemplazó al nodo If para permitir varios escenarios de clasificación.

### Criterios de aceptación

- [x] Agregar un nodo de **mapeo con expresiones** (mínimo 2 expresiones reales: `trim`, `toLowerCase`, concatenar ticket, etc.)
- [x] Incorporar **Form Trigger** *o* justificar/configurar **Schedule Trigger** (pueden dejar Manual para pruebas)
- [x] Crear una **salida útil**: `asunto`, `cuerpo`, `fila_hoja` o equivalentes de su ficha.
- [x] Avanzar el **diagrama** proceso actual vs automatizado (borrador).
- [x] Marcar el **checklist** de la entrega 1 y anotar pendientes.


## 4. Decisiones técnicas

| Decisión                                                | Razón                                                                                             | Alternativa descartada                    |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| Automatizar la comparación del stock de tienda y bodega | Reduce la revisión manual y permite identificar rápidamente los productos que requieren traslado. | Comparación manual producto por producto. |

## 5. Problemas y soluciones

| Problema encontrado                                                                  | Causa identificada                                                                                                | Solución aplicada                                                                   | ¿Cómo se verificó?                                                                                |
| ------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| Demoras y posibles errores al revisar manualmente qué productos necesitan reposición | La información de tienda y bodega debe compararse para cada producto y la revisión manual puede omitir productos. | Se automatizó la comparación de existencias y la generación de la cantidad a traer. | Se realizaron pruebas con diferentes cantidades de stock y se comprobó el resultado del reporte.. |

## 6. Evidencias

| Tipo    | Descripción                                                                | Enlace o ruta                        |
| ------- | -------------------------------------------------------------------------- | ------------------------------------ |
| Commit  | Cambio principal del workflow de comparación y reporte de inventario.      | [URL o hash]                         |
| Captura | Captura de la ejecución con diferentes cantidades de stock.                | ![[Pasted image 20260913215728.png]] |
| Demo    | Workflow de inventario tienda-bodega ejecutándose en n8n.                  | [URL]                                |
| Código  | Configuración de los nodos para comparar inventarios y generar el reporte. | [Ruta y líneas]                      |

## 7. Uso de inteligencia artificial

> [!important] Registrar la IA no reemplaza la explicación técnica. El equipo debe verificar, adaptar y comprender cualquier resultado utilizado.

| Herramienta | Objetivo o pregunta                               | Qué se utilizó                             | Cómo se verificó        | Qué se modificó                          |
| ----------- | ------------------------------------------------- | ------------------------------------------ | ----------------------- | ---------------------------------------- |
| IA          | Generar alertas o recomendaciones por poco stock. | Plan de uso futuro para apoyar decisiones. | Pendiente para Corte 3. | Se adaptará a las reglas del inventario. |

Si no se utilizó IA, escribir: **No se utilizó inteligencia artificial en esta sesión.**

## 8. Defensa técnica y retroalimentación

| Campo | Registro |
|---|---|
| Integrante que defendió | [Nombre] |
| Pregunta recibida | [Pregunta] |
| Respuesta resumida | [Respuesta] |
| Retroalimentación docente | [Observación] |
| Mejora acordada | [Acción concreta] |

## 9. Aprendizajes

   -Concepto comprendido: Automatización de la comparación de inventarios y generación de un reporte de reposición mediante n8n.

- Algo que aún genera duda: [Cómo conectar la automatización con la fuente real de datos del inventario, si todavía no está definida].

- Qué haríamos diferente: Conectar el flujo directamente con una hoja de cálculo o base de datos para consultar varios productos y mantener actualizadas las existencias.

## 10. Revisión antes de entregar

- [x] Todos los integrantes registraron un aporte verificable.
- [x] Los enlaces y rutas de evidencia funcionan.
- [x] Los criterios de aceptación están actualizados.
- [x] El uso de IA fue declarado y verificado.
- [x] El equipo puede explicar las decisiones registradas.

### Problema identificado

Actualmente, el proceso de revisión y actualización del inventario entre la tienda y la bodega se realiza de manera manual, lo que puede generar demoras, errores en la identificación de los productos que necesitan reposición y dificultad para mantener un control actualizado de las existencias. Además, se requiere revisar diferentes cantidades de inventario para determinar qué productos deben ser trasladados desde la bodega hacia la tienda.

Esta situación puede ocasionar que algunos productos no sean reabastecidos oportunamente, afectando la disponibilidad de mercancía y haciendo que el proceso de control de inventario sea menos ágil.

### Solución propuesta

Se propone desarrollar una **automatización mediante n8n** que consulte la información del inventario, compare las existencias de la tienda con las de la bodega y determine automáticamente la cantidad de productos que se deben trasladar.

El sistema generará un reporte organizado con información como **código del producto, nombre, stock disponible en tienda, stock disponible en bodega y cantidad a traer**, permitiendo al usuario identificar rápidamente los productos que requieren reabastecimiento.

### Usuario beneficiado

El principal usuario de esta solución será el **personal encargado del inventario y abastecimiento de la empresa**, quienes podrán consultar de manera más rápida y organizada qué productos necesitan ser trasladados desde la bodega hacia la tienda.

![[Pasted image 20260907201648.png]]