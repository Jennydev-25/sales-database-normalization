PRAGMA foreign_keys = ON;

CREATE TABLE
    continent (
        id_continent INTEGER PRIMARY KEY AUTOINCREMENT,
        continent_name VARCHAR(50)
    );

CREATE TABLE
    country (
        country_code CHAR(10) PRIMARY KEY,
        country_name VARCHAR(50),
        continent_id INTEGER,
        FOREIGN KEY (continent_id) REFERENCES continent (id_continent)
    );

CREATE TABLE
    cities (
        id_city INTEGER PRIMARY KEY AUTOINCREMENT,
        city_name VARCHAR(50),
        country_code CHAR(10),
        FOREIGN KEY (country_code) REFERENCES country (country_code)
    );

CREATE TABLE
    food_category (
        id_category INTEGER PRIMARY KEY AUTOINCREMENT,
        category_name VARCHAR(100)
    );

CREATE TABLE
    food_subcategory (
        id_subcategory INTEGER PRIMARY KEY AUTOINCREMENT,
        subcategory_name VARCHAR(100),
        category_id INTEGER,
        FOREIGN KEY (category_id) REFERENCES food_category (id_category)
    );

CREATE TABLE
    sales (
        id_sale INTEGER PRIMARY KEY AUTOINCREMENT,
        sale_date DATE,
        unit_sales BIGINT
    );

CREATE TABLE
    food_sales (
        subcategory_id INTEGER,
        sale_id INTEGER,
        PRIMARY KEY (subcategory_id, sale_id),
        FOREIGN KEY (subcategory_id) REFERENCES food_subcategory (id_subcategory),
        FOREIGN KEY (sale_id) REFERENCES sales (id_sale)
    );

CREATE TABLE
    cities_sales (
        city_id INTEGER,
        sale_id INTEGER,
        PRIMARY KEY (city_id, sale_id),
        FOREIGN KEY (city_id) REFERENCES cities (id_city),
        FOREIGN KEY (sale_id) REFERENCES sales (id_sale)
    );