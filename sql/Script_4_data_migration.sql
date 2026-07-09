INSERT INTO
    continent (continent_name)
SELECT DISTINCT
    continent
FROM
    sales_not_normalized;

INSERT INTO
    country (country_code, country_name, continent_id)
SELECT DISTINCT
    snn.country_code,
    snn.country,
    c.id_continent
FROM
    sales_not_normalized snn
    JOIN continent c ON snn.continent = c.continent_name;

INSERT INTO
    cities (city_name, country_code)
SELECT DISTINCT
    city,
    country_code
FROM
    sales_not_normalized;

INSERT INTO
    food_category (category_name)
SELECT DISTINCT
    food_category
FROM
    sales_not_normalized;

INSERT INTO
    food_subcategory (subcategory_name, category_id)
SELECT DISTINCT
    snn.food_subcategory,
    fc.id_category
FROM
    sales_not_normalized snn
    JOIN food_category fc ON snn.food_category = fc.category_name;

INSERT INTO
    sales (sale_date, unit_sales)
SELECT
    date,
    unit_sales
FROM
    sales_not_normalized
ORDER BY
    date;

INSERT INTO
    food_sales (subcategory_id, sale_id)
SELECT
    fs.id_subcategory,
    s.id_sale
FROM
    sales s
    JOIN sales_not_normalized snn ON s.sale_date = snn.date
    JOIN food_subcategory fs ON fs.subcategory_name = snn.food_subcategory;

INSERT INTO
    cities_sales (city_id, sale_id)
SELECT
    ci.id_city,
    s.id_sale
FROM
    sales s
    JOIN sales_not_normalized snn ON s.sale_date = snn.date
    JOIN cities ci ON ci.city_name = snn.city;