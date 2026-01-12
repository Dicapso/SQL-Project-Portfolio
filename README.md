# PROJECT 1: RETAIL (E-COMMERCE) SALES ANALYSIS

## Layihə Haqqında

Bu layihə, SQL vasitəsilə e-ticarət satış məlumatlarının hərtərəfli təhlilini aparmağı hədəfləyir. Əsas məqsəd, müştəri və məhsul davranışlarını başa düşmək, gəlir və satış trendlərini analiz etməkdir. Layihənin nəticələri Excel-də vizuallaşdırılmış və əsas tapıntılar PowerPoint təqdimatı vasitəsilə çatdırılmışdır.

## Məqsədlər

*   Müştəri davranışlarını və məhsul performansını təhlil etmək.
*   Satış, gəlir və mənfəət trendlərini müəyyən etmək.
*   Endirimlərin və ödəniş üsullarının satışa təsirini qiymətləndirmək.
*   Qaytarılma səbəblərini və faizlərini analiz etmək.
*   Analitik bacarıqları nümayiş etdirmək və işgüzar qərarlar üçün əsaslandırılmış tövsiyələr vermək.

## İstifadə Olunan Texnologiyalar

*   **SQL**: Məlumatların sorğulanması və təhlili üçün əsas dil. (Buraya istifadə etdiyiniz SQL dialektini əlavə edin, məsələn: `PostgreSQL`, `MySQL`, `SQL Server`)
*   **Microsoft Excel**: SQL nəticələrini vizuallaşdırmaq (Pivot Tables, Charts) üçün.
*   **Microsoft PowerPoint**: Əsas tapıntıları və tövsiyələri təqdim etmək üçün.
*   (İstifadə etdiyiniz hər hansı bir SQL İDE-ni əlavə edə bilərsiniz, məsələn: `DBeaver`, `SSMS`, `PgAdmin`)

## Verilənlər Bazasının Sxemi

Layihə aşağıdakı beş əsas cədvəl üzərində qurulmuşdur:

### `CUSTOMERS`
Müştəri haqqında əsas məlumatları ehtiva edir.

| Sütun             | İzah                   | Data Tipi      |
|-------------------|------------------------|----------------|
| `customer_id`     | Müştərinin unikal ID-si| `INT PRIMARY KEY` |
| `full_name`       | Müştərinin adı         | `VARCHAR(255)` |
| `gender`          | Cins (Male/Female)     | `VARCHAR(10)`  |
| `age`             | Yaş                    | `INT`          |
| `city`            | Şəhər                  | `VARCHAR(100)` |
| `registration_date` | Qeydiyyat tarixi       | `DATE`         |

### `PRODUCTS`
Məhsulun xüsusiyyətlərini ehtiva edir.

| Sütun          | İzah             | Data Tipi      |
|----------------|------------------|----------------|
| `product_id`   | Məhsulun ID-si   | `INT PRIMARY KEY` |
| `product_name` | Məhsulun adı     | `VARCHAR(255)` |
| `category`     | Kateqoriya       | `VARCHAR(100)` |
| `unit_price`   | Satış qiyməti    | `DECIMAL(10, 2)` |
| `cost_price`   | Maya dəyəri      | `DECIMAL(10, 2)` |

### `ORDERS`
Sifarişlər haqqında ümumi məlumatları ehtiva edir.

| Sütun            | İzah                     | Data Tipi      |
|------------------|--------------------------|----------------|
| `order_id`       
