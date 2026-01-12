##📊 E-Ticarət Satış Analizi Proyekti (SQL & Excel)
📌 Layihə haqqında
Bu layihə e-ticarət platformasının satış məlumatlarını təhlil etmək üçün hazırlanmışdır. Əsas məqsəd SQL vasitəsilə böyük verilənlər bazasından biznes üçün əhəmiyyətli məlumatları (insaytları) çıxarmaq, müştəri və məhsul davranışlarını öyrənmək və nəticələri Excel-də vizuallaşdırmaqdır.

🛠 İstifadə Olunan Alətlər
SQL: Verilənlərin çıxarılması, aqreqasiyası və təmizlənməsi.
MS Excel: Pivot cədvəllər, Dashboard və vizuallaşdırma.
MS PowerPoint: Yekun hesabat və strateji tövsiyələr.
📂 Verilənlər Bazası Strukturu (Database Schema)
Layihədə 5 əsas cədvəldən istifadə olunmuşdur:

CUSTOMERS: Müştəri məlumatları (ID, ad, cins, yaş, şəhər, qeydiyyat tarixi).
PRODUCTS: Məhsul portfeli (ID, ad, kateqoriya, satış qiyməti, maya dəyəri).
ORDERS: Sifarişlərin ümumi vəziyyəti (ID, tarix, ödəniş üsulu, status).
ORDER_DETAILS: Sifarişlərin detalları (miqdar, endirim məbləği).
RETURNS: Qaytarılan məhsullar və səbəbləri.
🚀 Analiz Mərhələləri və Tapşırıqlar
I. Satış Göstəriciləri
Ümumi satış məbləğinin hesabı: (unit_price * quantity) - discount.
Aylar üzrə satış trendi və sifariş sayının dinamikası.
Məhsul əsaslı mənfəət analizi: Profit = (Revenue - Discount) - Cost.
TOP 5 gəlir gətirən məhsul və ən aktiv 5 müştərinin müəyyən edilməsi.
II. Endirim və Ödəniş Analizi
Endirimlərin satış həcminə təsirinin yoxlanılması.
Ödəniş üsullarının (Nəqd, Kart, Köçürmə) payının analizi.
Tamamlanmış və ləğv edilmiş sifarişlərin nisbəti.
III. Qaytarılma Analizi
Ümumi qaytarılma faizinin (Return Rate) hesablanması.
Ən çox qaytarılan məhsul kateqoriyalarının tapılması.
Qaytarılma səbəblərinin (Müştəri narazılığı, Yanlış məhsul, Defekt) analizi.
IV. Bonus Analizlər
Kateqoriya üzrə orta mənfəət faizi.
Yaş qruplarına görə (18-24, 25-35, 36-50, 50+) satış payı.
2023 və 2024-cü illər üzrə müqayisəli artım (Growth Rate).
📈 Əsas Tapıntılar (Key Insights)
Demoqrafiya: Ən yüksək alıcılıq qabiliyyəti 50+ yaş qrupundadır, lakin gənclər arasında rəqəmsal satış potensialı artırılmalıdır.
Logistika: Qaytarılmaların 36%-i yanlış məhsul göndərilməsi ilə bağlıdır, bu da anbar idarəetməsində boşluq olduğunu göstərir.
Mövsümilik: Satışların pik nöqtəsi İyul və Oktyabr aylarına təsadüf edir. Noyabr ayında ("Black Friday" dövrü) gözlənilməz düşüş müşahidə olunur.
💡 Tövsiyələr
Anbar Optimizasiyası: Yanlış məhsul göndərilməsini azaltmaq üçün barkod sisteminə keçid edilməlidir.
Marketinq: Loyal müştərilər (TOP 5) üçün xüsusi VIP proqramlar tətbiq olunmalıdır.
Endirim Strategiyası: Mənfəəti mənfiyə salan aqressiv endirim kampaniyaları yenidən nəzərdən keçirilməlidir.
