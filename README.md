<h1 align="center">🛒 Retail (E-Commerce) Sales Analysis Project</h1>

<p align="center">
  <img src="https://img.shields.io/badge/SQL-Expert-blue?style=for-the-badge&logo=postgresql" />
  <img src="https://img.shields.io/badge/Excel-Dashboard-green?style=for-the-badge&logo=microsoftexcel" />
  <img src="https://img.shields.io/badge/PowerPoint-Presentation-orange?style=for-the-badge&logo=microsoftpowerpoint" />
</p>

<br>

## 📝 Layihə Haqqında
Bu layihə e-ticarət satış məlumatlarının dərindən analiz edilməsi üçün nəzərdə tutulub. **SQL** vasitəsilə verilənlər bazasından məlumatlar emal edilmiş, **Excel**-də Pivot və Chart-lar vasitəsilə vizuallaşdırılmış və strateji biznes tövsiyələri hazırlanmışdır.

---

## 🏗 1. Verilənlər Bazası Strukturu (Data Schema)

Aşağıdakı cədvəllər arasında əlaqələr qurularaq analiz aparılmışdır:

| Cədvəl Adı | Əsas Sütunlar | İzah |
| :--- | :--- | :--- |
| **CUSTOMERS** | `customer_id`, `age`, `city` | Müştəri demoqrafiyası |
| **PRODUCTS** | `product_id`, `unit_price`, `cost_price` | Məhsul maliyyə məlumatları |
| **ORDERS** | `order_id`, `order_date`, `status` | Sifarişin vəziyyəti |
| **ORDER_DETAILS** | `quantity`, `discount` | Satış detalları |
| **RETURNS** | `return_date`, `reason` | Qaytarılma səbəbləri |

---

## 💻 2. Texniki Analiz (SQL Queries)

Layihənin əsasını təşkil edən mənfəət və satış hesablamaları üçün istifadə olunan SQL kodu:

SQL
Ümumi Xalis Mənfəətin Hesablanması 
SELECT 
p.product_name,
SUM(((p.unit_price * od.quantity) - od.discount) - (p.cost_price * od.quantity)) AS net_profit
FROM ORDER_DETAILS od
JOIN PRODUCTS p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY net_profit DESC;
№№ 📊 3. Əsas Biznes İnsaytları
Analiz nəticəsində əldə olunan kritik göstəricilər:

<table> <tr> <td><b>Müştəri Seqmenti</b></td> <td>Ən aktiv alıcılar <b>50+ yaş</b> qrupundadır.</td> </tr> <tr> <td><b>Qaytarılma Faizi</b></td> <td>Ümumi sifarişlərin <b>19%</b>-i geri qaytarılır.</td> </tr> <tr> <td><b>Pik Dövr</b></td> <td>Satışlar əsasən <b>İyul və Oktyabr</b> aylarında maksimuma çatır.</td> </tr> </table>
№№ 🛠 4. Qaytarılma Səbəblərinin Analizi
Qaytarılmaların səbəblərini təhlil etdikdə aşağıdakı mənzərə yaranır:

Səbəb (Reason)	Payı (%)	Həll Yolu
Müştəri Narazılığı	37%	Məhsul təsvirlərinin (video/şəkil) optimallaşdırılması
Yanlış Məhsul	36%	Anbar barkod və SKU yoxlama sisteminin qurulması
Defektli Məhsul	27%	Qablaşdırma və logistika keyfiyyətinin artırılması
№№ 💡 5. Strateji Tövsiyələr
<p align="justify"> 1. <b>Logistika:</b> Səhv göndərilən məhsulların (36%) qarşısını almaq üçün avtomatlaşdırılmış anbar sisteminə keçid şərtdir.<br> 2. <b>Marketinq:</b> 18-24 yaş arası gənc kütləni cəlb etmək üçün rəqəmsal kampaniyalar gücləndirilməlidir.<br> 3. <b>Maliyyə:</b> Mənfəəti azaldan "Həddindən artıq endirim" (Aggressive Discounting) siyasətinə limitlər qoyulmalıdır. </p>
📂 Layihə Materialları
 SQL Scriptlər (/queries)
 Excel Dashboard (/vizualization)
 PowerPoint Presentation (/report)
<br><p align="center"> <b>Müəllif: [Tural Zamanlı]</b><br> <i>Data Analyst Portfolio Project</i> </p> ```
