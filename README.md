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

## 🗂️ Tabla original

Partimos de una única tabla plana que mezcla, en cada fila, información geográfica, la categoría del producto y los datos propios de la venta:

```sql
CREATE TABLE sales_not_normalized (
    food_category    VARCHAR(100),
    food_subcategory VARCHAR(100),
    country          VARCHAR(50),
    country_code     CHAR(10),
    continent        VARCHAR(50),
    city             VARCHAR(50),
    unit_sales       BIGINT,
    date             DATE
);
```

Un vistazo a los datos de partida (10 registros):

| food_category               | food_subcategory                    | country       | country_code | continent     | city            | unit_sales | date       |
| --------------------------- | ----------------------------------- | ------------- | :----------: | ------------- | --------------- | ---------: | ---------- |
| Beverages                   | Carbonated non-alcoholic            | Belgium       |     BEL      | Europe        | Brussels        |    1906983 | 2021-10-06 |
| Dairy                       | Low-fat milk                        | Brazil        |     BRA      | South America | Rio de Janeiro  |  652432000 | 2021-10-13 |
| Meats, eggs, and nuts       | Nuts and seeds raw                  | Canada        |     CAN      | North America | Vancouver       |  354097000 | 2021-11-10 |
| Fruits                      | Fruit juice                         | Germany       |     DEU      | Europe        | Berlin          |  132004000 | 2021-11-24 |
| Commercially prepared items | Packaged nuts                       | Denmark       |     DNK      | Europe        | Copenhagen      |   80125000 | 2021-12-07 |
| Fruits                      | Canned fruit juice                  | France        |     FRA      | Europe        | Paris           |  754945000 | 2021-12-15 |
| Commercially prepared items | Not sweet canned (soups, sauces...) | Ireland       |     IRL      | Europe        | Dublin          |  112873000 | 2021-12-22 |
| Commercially prepared items | Sweet ready-to-eat (bakery items)   | United States |     USA      | North America | Washington D.C. |   90086000 | 2022-01-07 |
| Commercially prepared items | Not sweet packaged, snacks          | Uruguay       |     URY      | South America | Montevideo      |  140941000 | 2022-01-15 |
| Commercially prepared items | Sweet frozen (ice cream, desserts)  | Samoa         |     WSM      | Oceania       | Apia            |    6000000 | 2022-01-22 |

---

## 👩‍💻 Autora

**[Jenny Sánchez Requejo](https://github.com/Jennydev-25)**
