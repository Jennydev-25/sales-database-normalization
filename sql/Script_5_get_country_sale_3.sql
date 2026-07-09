SELECT
    co.country_name
FROM
    sales s
    JOIN cities_sales cs ON s.id_sale = cs.sale_id
    JOIN cities ci ON cs.city_id = ci.id_city
    JOIN country co ON ci.country_code = co.country_code
WHERE
    s.id_sale = 3;