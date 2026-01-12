<H1> 🛒 RETAIL (E-COMMERCE) SALES ANALYSIS PROJECT </h1>
    
<br>
📌 1. LAYİHƏNİN MƏQSƏDİ
Bu layihə e-ticarət platformasının satış məlumatlarını SQL vasitəsilə analiz etmək, müştəri və məhsul davranışlarını öyrənmək və Excel-də vizuallaşdırmaq üçün hazırlanmışdır. Layihənin əsas hədəfi satış trendlərini müəyyən etmək və gəlirliliyi artırmaq üçün data-əsaslı tövsiyələr verməkdir.

🏗 2. VERİLƏNLƏR BAZASI STRUKTURU (DATA SCHEMA)
Layihədə istifadə olunan 5 əsas cədvəl aşağıdakı məlumatları əhatə edir:

CUSTOMERS: Müştəri demoqrafiyası (Yaş, Cins, Şəhər).
PRODUCTS: Məhsul portfeli, maya dəyəri və satış qiyməti.
ORDERS: Sifariş statusları və ödəniş üsulları.
ORDER_DETAILS: Sifariş miqdarı və endirim məlumatları.
RETURNS: Qaytarılma halları və səbəbləri.
💻 3. SQL ANALİZLƏRİ (DATA EXTRACTION)
Analiz zamanı istifadə olunan əsas skript nümunələri:

🔹 Ümumi Mənfəətin Hesablanması:
SQL

SELECT 
    p.product_name,
    SUM(((p.unit_price * od.quantity) - od.discount) - (p.cost_price * od.quantity)) AS total_profit
FROM ORDER_DETAILS od
JOIN PRODUCTS p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC;
🔹 Qaytarılma Faizinin Tapılması:
SQL

SELECT 
    (CAST(COUNT(r.return_id) AS FLOAT) / COUNT(o.order_id)) * 100 AS return_rate
FROM ORDERS o
LEFT JOIN RETURNS r ON o.order_id = r.order_id;
📊 4. ƏSAS TAPINTILAR (KEY FINDINGS)
Excel və SQL analizi nəticəsində əldə olunan mühüm insaytlar:

Yaş Seqmenti: Ən yüksək satış 50+ yaş qrupundadır.
Satış Trendi: İyul və Oktyabr ayları ən yüksək satış dövrləridir.
Qaytarılma Problemi: Ümumi satışların 19%-i geri qaytarılır.
Ödəniş: Nəqd və Kart ödənişləri demək olar ki, bərabər paya malikdir (31-35%).
💡 5. STRATEJİ TÖVSİYƏLƏR
Analiz nəticəsində şirkət rəhbərliyi üçün aşağıdakı tövsiyələr hazırlanmışdır:

Logistika: Qaytarılmaların 36%-i olan "Yanlış Məhsul" problemini həll etmək üçün anbar barkod sisteminə keçid edilməlidir.
Məhsul Təqdimatı: 37% "Müştəri Narazılığı"nı azaltmaq üçün vebsaytda məhsulların video-icmalları yerləşdirilməlidir.
Marketinq: Gənc yaş qrupunu (18-24) cəlb etmək üçün xüsusi sosial media kampaniyaları başladılmalıdır.
Qiymətləndirmə: Mənfəəti mənfiyə salan aqressiv endirim kampaniyaları optimallaşdırılmalıdır.
📁 6. LAYİHƏ MATERİALLARI
📂 /sql_queries — SQL skriptləri.
📂 /excel_dashboard — Analiz faylları və chart-lar.
📂 /presentation — PowerPoint hesabatı.
<br>
Author: [Tural Zamanlı]
Tools: SQL, MS Excel, PowerPoint
