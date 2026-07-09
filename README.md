# 🌍 Any Company Global – Normalización en SQLite (3FN)

> Ejercicio de normalización de una tabla de ventas globales sin normalizar hasta la Tercera Forma Normal (3FN), implementada en **SQLite con DBeaver**, con su diagrama ER de Chen, su esquema físico y una consulta final que recupera el país de una venta concreta.

---

## 📋 Descripción

El objetivo de este proyecto es partir de una tabla de ventas totalmente desnormalizada (`sales_not_normalized`) y aplicarle las tres primeras formas normales (1FN, 2FN y 3FN) para obtener un modelo relacional limpio, sin redundancias ni dependencias transitivas, implementado directamente en una base de datos SQLite.

Los requisitos principales son:

1. **Crear la base de datos SQLite** con DBeaver (`db_any_company_global`) e insertar los datos de partida usando los scripts proporcionados por el profesor.
2. **Realizar un diagrama ER de Chen** para modelar conceptualmente las entidades, sus atributos y sus relaciones.
3. **Normalizar la base de datos en DBeaver** hasta la 3FN, definiendo las claves primarias (PK) y foráneas (FK) sin perder ninguna relación.
4. **Escribir un script SQL** que recupere el país donde se realizó la venta con `id = 3`. **Output esperado:** `Canada`.

---

## 👩‍💻 Autora

**[Jenny Sánchez Requejo](https://github.com/Jennydev-25)**