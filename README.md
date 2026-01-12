<!DOCTYPE html>
<html lang="az">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PROJECT 1: RETAIL (E-COMMERCE) SALES ANALYSIS</title>
    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --accent: #e74c3c;
            --light: #ecf0f1;
            --dark: #2c3e50;
            --success: #27ae60;
            --warning: #f39c12;
            --info: #16a085;
            --danger: #e74c3c;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f8f9fa;
        }
        
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
        }
        
        header {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            color: white;
            padding: 30px 20px;
            text-align: center;
            border-radius: 10px 10px 0 0;
            margin-bottom: 30px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        
        h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        
        .subtitle {
            font-size: 1.2rem;
            opacity: 0.9;
            margin-bottom: 20px;
        }
        
        .badge {
            display: inline-block;
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: bold;
            margin: 0 5px;
            color: white;
        }
        
        .badge-primary {
            background-color: var(--primary);
        }
        
        .badge-secondary {
            background-color: var(--secondary);
        }
        
        .badge-accent {
            background-color: var(--accent);
        }
        
        .section {
            background: white;
            border-radius: 8px;
            padding: 25px;
            margin-bottom: 30px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
            transition: transform 0.3s ease;
        }
        
        .section:hover {
            transform: translateY(-2px);
        }
        
        h2 {
            color: var(--primary);
            border-bottom: 3px solid var(--secondary);
            padding-bottom: 8px;
            margin-bottom: 20px;
            font-size: 2rem;
        }
        
        h3 {
            color: var(--secondary);
            margin: 25px 0 15px;
            font-size: 1.5rem;
        }
        
        h4 {
            color: var(--accent);
            margin: 20px 0 10px;
            font-size: 1.2rem;
        }
        
        p {
            margin-bottom: 15px;
            text-align: justify;
        }
        
        ul, ol {
            margin-bottom: 20px;
            padding-left: 30px;
        }
        
        li {
            margin-bottom: 8px;
        }
        
        .table-container {
            overflow-x: auto;
            margin: 20px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 0.95rem;
        }
        
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #f2f2f2;
            font-weight: bold;
            color: var(--primary);
        }
        
        tr:nth-child(even) {
            background-color: #fafafa;
        }
        
        .highlight {
            background-color: #fffde7;
            padding: 15px;
            border-left: 4px solid var(--warning);
            margin: 15px 0;
            border-radius: 5px;
        }
        
        .tip {
            background-color: #e3f2fd;
            padding: 15px;
            border-left: 4px solid var(--info);
            margin: 15px 0;
            border-radius: 5px;
        }
        
        .warning {
            background-color: #ffebee;
            padding: 15px;
            border-left: 4px solid var(--danger);
            margin: 15px 0;
            border-radius: 5px;
        }
        
        .success {
            background-color: #e8f5e9;
            padding: 15px;
            border-left: 4px solid var(--success);
            margin: 15px 0;
            border-radius: 5px;
        }
        
        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin: 20px 0;
        }
        
        .card {
            background: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
            border: 1px solid #eee;
            transition: all 0.3s ease;
        }
        
        .card:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 16px rgba(0,0,0,0.1);
            border-color: var(--secondary);
        }
        
        .card-header {
            color: var(--primary);
            font-weight: bold;
            margin-bottom: 15px;
            font-size: 1.2rem;
            display: flex;
            align-items: center;
        }
        
        .card-header i {
            margin-right: 10px;
            color: var(--secondary);
        }
        
        .timeline {
            position: relative;
            padding: 20px 0;
        }
        
        .timeline::before {
            content: '';
            position: absolute;
            top: 0;
            bottom: 0;
            left: 30px;
            width: 2px;
            background: var(--secondary);
        }
        
        .timeline-item {
            position: relative;
            margin-bottom: 30px;
            padding-left: 60px;
        }
        
        .timeline-item::before {
            content: '';
            position: absolute;
            left: 25px;
            top: 10px;
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background: var(--accent);
            border: 3px solid white;
            box-shadow: 0 0 0 2px var(--secondary);
        }
        
        .timeline-date {
            position: absolute;
            left: 0;
            top: 5px;
            font-weight: bold;
            color: var(--secondary);
        }
        
        .progress-container {
            margin: 20px 0;
        }
        
        .progress-title {
            display: flex;
            justify-content: space-between;
            margin-bottom: 5px;
        }
        
        .progress-bar {
            height: 10px;
            background-color: #eee;
            border-radius: 5px;
            overflow: hidden;
            margin-bottom: 15px;
        }
        
        .progress-fill {
            height: 100%;
            background: linear-gradient(90deg, var(--secondary), var(--primary));
            border-radius: 5px;
        }
        
        .icon-list {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            margin: 15px 0;
        }
        
        .icon-item {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 15px;
            background: #f8f9fa;
            border-radius: 20px;
            border: 1px solid #ddd;
        }
        
        .icon-item i {
            font-size: 1.2rem;
            color: var(--secondary);
        }
        
        footer {
            text-align: center;
            padding: 20px;
            margin-top: 30px;
            color: #666;
            border-top: 1px solid #ddd;
            font-size: 0.9rem;
        }
        
        @media (max-width: 768px) {
            .container {
                padding: 15px;
                margin: 10px auto;
            }
            
            h1 {
                font-size: 2rem;
            }
            
            h2 {
                font-size: 1.5rem;
            }
            
            .card-grid {
                grid-template-columns: 1fr;
            }
            
            .table-container {
                font-size: 0.85rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>PROJECT 1: RETAIL (E-COMMERCE) SALES ANALYSIS</h1>
            <p class="subtitle">Tələbələr SQL vasitəsilə e-commerce satış məlumatlarını təhlil etməli, müştəri və məhsul davranışını öyrənməli, gəlir və satış trendini analiz etməlidirlər.</p>
            <div class="icon-list">
                <span class="badge badge-primary">SQL Analysis</span>
                <span class="badge badge-secondary">Excel Visualization</span>
                <span class="badge badge-accent">PowerPoint Presentation</span>
            </div>
        </header>

        <div class="section">
            <h2>🎯 Layihənin Məqsədi</h2>
            <p>Bu layihədə tələbələr e-ticarət satış məlumatlarını SQL vasitəsilə təhlil edərək, müştəri və məhsul davranışını öyrənməli, gəlir və satış trendini analiz etməlidirlər. Nəticələri Excel-də vizuallaşdırmalı və PowerPoint-də təqdim etməlidirlər.</p>
            
            <div class="highlight">
                <strong>Əsas Məqsədlər:</strong>
                <ul>
                    <li>Müştəri davranışının təhlili və seqmentasiyası</li>
                    <li>Məhsul performansının qiymətləndirilməsi</li>
                    <li>Satış trendlərinin müəyyən edilməsi</li>
                    <li>Gəlir və mənfəət analizi</li>
                    <li>Endirim və qaytarma təsirinin qiymətləndirilməsi</li>
                    <li>Verilənlərdən istifadə edərək biznes tövsiyələrinin hazırlanması</li>
                </ul>
            </div>
        </div>

        <div class="section">
            <h2>🗂️ İstifadə Olunan Cədvəllər</h2>
            
            <div class="card-grid">
                <div class="card">
                    <div class="card-header">CUSTOMERS</div>
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th>Sütun</th>
                                    <th>İzah</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr><td>customer_id</td><td>Müştərinin unikal ID-si</td></tr>
                                <tr><td>full_name</td><td>Müştərinin adı</td></tr>
                                <tr><td>gender</td><td>Cins (Male/Female)</td></tr>
                                <tr><td>age</td><td>Yaş</td></tr>
                                <tr><td>city</td><td>Şəhər</td></tr>
                                <tr><td>registration_date</td><td>Qeydiyyat tarixi</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card-header">PRODUCTS</div>
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th>Sütun</th>
                                    <th>İzah</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr><td>product_id</td><td>Məhsulun ID-si</td></tr>
                                <tr><td>product_name</td><td>Məhsulun adı</td></tr>
                                <tr><td>category</td><td>Kateqoriya</td></tr>
                                <tr><td>unit_price</td><td>Satış qiyməti</td></tr>
                                <tr><td>cost_price</td><td>Maya dəyəri</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card-header">ORDERS</div>
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th>Sütun</th>
                                    <th>İzah</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr><td>order_id</td><td>Sifariş ID-si</td></tr>
                                <tr><td>customer_id</td><td>Müştəri ID-si (foreign key)</td></tr>
                                <tr><td>order_date</td><td>Sifariş tarixi</td></tr>
                                <tr><td>payment_method</td><td>Ödəniş üsulu</td></tr>
                                <tr><td>status</td><td>Status (Completed, Cancelled, Returned)</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
            <div class="card-grid">
                <div class="card">
                    <div class="card-header">ORDER_DETAILS</div>
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th>Sütun</th>
                                    <th>İzah</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr><td>order_id</td><td>Sifariş ID-si (foreign key)</td></tr>
                                <tr><td>product_id</td><td>Məhsul ID-si (foreign key)</td></tr>
                                <tr><td>quantity</td><td>Miqdar</td></tr>
                                <tr><td>discount</td><td>Endirim məbləği</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card-header">RETURNS</div>
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th>Sütun</th>
                                    <th>İzah</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr><td>return_id</td><td>Qaytarılma ID-si</td></tr>
                                <tr><td>order_id</td><td>Sifariş ID-si (foreign key)</td></tr>
                                <tr><td>product_id</td><td>Məhsul ID-si</td></tr>
                                <tr><td>return_date</td><td>Qaytarılma tarixi</td></tr>
                                <tr><td>reason</td><td>Qaytarılma səbəbi</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="section">
            <h2>📋 Tapşırıqlar</h2>
            
            <h3>I. Satış Göstəriciləri</h3>
            <ol>
                <li><strong>Ümumi satış məbləğini hesabla</strong> - (unit_price × quantity - discount)</li>
                <li><strong>Hər ay üzrə satış məbləği və sifariş sayı</strong> - Ay və il üzrə gruplaşdırma</li>
                <li><strong>Hər məhsul üzrə gəlir, maya dəyəri və mənfəət</strong> - Profit = Revenue - Cost</li>
                <li><strong>Ən çox gəlir gətirən 5 məhsulu tap</strong> - Top 5 by total profit</li>
                <li><strong>Ən çox alış-veriş edən 5 müştəri</strong> - Top 5 by total spending</li>
                <li><strong>Şəhərlər üzrə ümumi satış və sifariş sayı</strong> - City-based analysis</li>
            </ol>
            
            <h3>II. Endirim və Ödəniş Analizi</h3>
            <ol start="7">
                <li><strong>Endirimin satışa təsirini analiz et</strong> - Endirimli vs endirimsiz sifarişlər</li>
                <li><strong>Ödəniş üsullarına görə satış bölgüsünü göstər</strong> - Payment method distribution</li>
                <li><strong>Ləğv edilmiş və tamamlanmış sifarişlərin nisbətini tap</strong> - Cancelled vs Completed</li>
            </ol>
            
            <h3>III. Qaytarılma Analizi</h3>
            <ol start="10">
                <li><strong>Qaytarılma faizi</strong> - return count / total orders</li>
                <li><strong>Ən çox qaytarılan məhsul və kateqoriya</strong> - Most returned products/categories</li>
                <li><strong>Qaytarılma səbəblərinin payı</strong> - Distribution of return reasons</li>
            </ol>
            
            <h3>IV. Bonus Suallar</h3>
            <ul>
                <li><strong>Hər kateqoriyanın orta mənfəət faizi (%)</strong> - Average profit margin by category</li>
                <li><strong>Müştəri yaş qruplarına görə satış payı</strong> - Age group segmentation</li>
                <li><strong>2023 və 2024-cü illər üzrə satış artımı</strong> - Year-over-year growth</li>
            </ul>
        </div>

        <div class="section">
            <h2>📊 Excel Mərhələsi</h2>
            <p>SQL nəticələrini Excel-ə export et və aşağıdakı vizuallaşdırmaları yarat:</p>
            
            <div class="card-grid">
                <div class="card">
                    <div class="card-header">📈 Ay Üzrə Satış Trendi</div>
                    <p>Xətti qrafik vasitəsilə aylıq satış dinamikasını göstər. Zamanla satışın necə dəyişdiyini analiz et.</p>
                </div>
                
                <div class="card">
                    <div class="card-header">🏆 Top 5 Məhsul və Müştəri</div>
                    <p>Sütun qrafikləri ilə ən çox gəlir gətirən məhsulları və ən çox alış-veriş edən müştəriləri göstər.</p>
                </div>
                
                <div class="card">
                    <div class="card-header">↩️ Qaytarılma Faizi</div>
                    <p>Dairəvi diaqramla ümumi qaytarma faizini göstər. Problem sahələrini müəyyən et.</p>
                </div>
                
                <div class="card">
                    <div class="card-header">💳 Ödəniş Üsullarının Payı</div>
                    <p>Tort diaqramı ilə ödəniş üsullarının satışda payını göstər. Müştərilərin preferensialarını anla.</p>
                </div>
            </div>
            
            <div class="tip">
                <strong>Excel Tips:</strong> Pivot table-lardan istifadə edərək dinamik analizlər aparın. Filtrlər qoyaraq verilənləri fərqli açıdan təhlil edin.
            </div>
        </div>

        <div class="section">
            <h2>📊 PowerPoint Mərhələsi</h2>
            <p>Tələbələr təqdimatda aşağıdakıları göstərməlidirlər:</p>
            
            <div class="timeline">
                <div class="timeline-item">
                    <div class="timeline-date">Slide 1</div>
                    <h4>Layihənin Məqsədi və İstifadə Olunan Cədvəllər</h4>
                    <p>Layihənin əsas məqsədini, istifadə olunan cədvəlləri və SQL scriptlərini təqdim edin.</p>
                </div>
                
                <div class="timeline-item">
                    <div class="timeline-date">Slide 2</div>
                    <h4>Tapdığınız Insightlar</h4>
                    <p>Analiz prosesində tapdığınız ən maraqlı və faydalı faktları paylaşın.</p>
                </div>
                
                <div class="timeline-item">
                    <div class="timeline-date">Slide 3</div>
                    <h4>Əsas Tapıntılar</h4>
                    <p>Ən yaxşı məhsullar, müştəri seqmentləri və satış trendlərini təqdim edin.</p>
                </div>
                
                <div class="timeline-item">
                    <div class="timeline-date">Slide 4</div>
                    <h4>Vizual Qrafiklər və Pivot Analizi</h4>
                    <p>Excel-də hazırladığınız vizuallaşdırmaları təqdim edin və onların işarə etdiyi tendensiyaları izah edin.</p>
                </div>
                
                <div class="timeline-item">
                    <div class="timeline-date">Slide 5</div>
                    <h4>Qısa Nəticə və Tövsiyələr</h4>
                    <p>Layihədən alınan əsas nəticələri və biznesə tətbiq oluna biləcək tövsiyələri təqdim edin.</p>
                </div>
            </div>
            
            <div class="success">
                <strong>PowerPoint Təqdimatı üçün Tövsiyələr:</strong>
                <ul>
                    <li>Her slaydda bir əsas ideya olsun</li>
                    <li>Çoxlu mətn yerinə vizual elementlərdən istifadə edin</li>
                    <li>Verilənlərin mənasını izah edən başlıqlar yazın</li>
                    <li>Qısa və aydın ifadələrdən istifadə edin</li>
                    <li>Proqnozlar və tövsiyələrə xüsusi diqqət yetirin</li>
                </ul>
            </div>
        </div>

        <div class="section">
            <h2>🚀 Proyektin Həyata Keçirilməsi</h2>
            
            <div class="card-grid">
                <div class="card">
                    <div class="card-header">🔧 SQL Analiz</div>
                    <p>Verilənlər bazasında sorğular yazıb, bütün tapşırıqları yerinə yetirin. Hər sorğu üçün nəticələri yoxlayın və Excel-ə ixrac edin.</p>
                </div>
                
                <div class="card">
                    <div class="card-header">📊 Excel Vizuallaşdırma</div>
                    <p>SQL nəticələrini Excel-ə import edib, pivot cədvəllər və qrafiklər vasitəsilə məlumatları vizuallaşdırın.</p>
                </div>
                
                <div class="card">
                    <div class="card-header">🎤 PowerPoint Təqdimat</div>
                    <p>Təqdimat slaydlarını hazırlayın, tapıntılarınızı təqdim edin və tövsiyələrinizi izah edin.</p>
                </div>
            </div>
            
            <div class="timeline">
                <div class="timeline-item">
                    <div class="timeline-date">Həftə 1</div>
                    <h4>Verilənlər Bazası və SQL Sorğuları</h4>
                    <p>Verilənlər bazasını qurun, cədvəlləri yaradın və əsas sorğuları yazın.</p>
                </div>
                
                <div class="timeline-item">
                    <div class="timeline-date">Həftə 2</div>
                    <h4>Detallı Analiz və Excel Hazırlığı</h4>
                    <p>Bütün tapşırıqları yerinə yetirin, nəticələri Excel-ə ixrac edin və ilk vizuallaşdırmaları yaradın.</p>
                </div>
                
                <div class="timeline-item">
                    <div class="timeline-date">Həftə 3</div>
                    <h4>PowerPoint Təqdimatı və Nəticələrin Hazırlanması</h4>
                    <p>Təqdimat slaydlarını hazırlayın, tapıntılarınızı təqdim edin və proyekti tamamlayın.</p>
                </div>
            </div>
        </div>

        <div class="section">
            <h2>✅ Proyektin Uğurlu Tamamlanması Üçün Tələblər</h2>
            
            <div class="progress-container">
                <div class="progress-title">
                    <span>SQL Sorğuları</span>
                    <span>100%</span>
                </div>
                <div class="progress-bar">
                    <div class="progress-fill" style="width: 100%;"></div>
                </div>
            </div>
            
            <div class="progress-container">
                <div class="progress-title">
                    <span>Excel Vizuallaşdırma</span>
                    <span>100%</span>
                </div>
                <div class="progress-bar">
                    <div class="progress-fill" style="width: 100%;"></div>
                </div>
            </div>
            
            <div class="progress-container">
                <div class="progress-title">
                    <span>PowerPoint Təqdimatı</span>
                    <span>100%</span>
                </div>
                <div class="progress-bar">
                    <div class="progress-fill" style="width: 100%;"></div>
                </div>
            </div>
            
            <div class="highlight">
                <strong>Uğurlu Proyekt üçün Əsas Elementlər:</strong>
                <ul>
                    <li>Doğru SQL sorğuları və hesablamalar</li>
                    <li>Profesional Excel vizuallaşdırma</li>
                    <li>Açıq və qətiyyətli PowerPoint təqdimatı</li>
                    <li>Verilənlərdən çıxarılmış məntiqi insightlar</li>
                    <li>Praktiki tövsiyələr və biznes təklifləri</li>
                </ul>
            </div>
        </div>

        <div class="section">
            <h2>💡 Tələbələr üçün Tövsiyələr</h2>
            
            <div class="card-grid">
                <div class="card">
                    <div class="card-header">📌 Planlaşdırma</div>
                    <p>Proyekti həftəlik plana bölüb, hər həftə üçün konkret məqsədlər qoyun.</p>
                </div>
                
                <div class="card">
                    <div class="card-header">🔍 Dəqiqlik</div>
                    <p>Hesablamalarda səhv olmaması üçün nəticələri müxtəlif yollarla yoxlayın.</p>
                </div>
                
                <div class="card">
                    <div class="card-header">🎨 Vizuallaşdırma</div>
                    <p>Excel qrafiklərinin professional görünüşü üçün rənglər, başlıqlar və etiketlərə diqqət yetirin.</p>
                </div>
                
                <div class="card">
                    <div class="card-header">🗣️ Təqdimat</div>
                    <p>Təqdimat zamanı verilənləri sadəcə oxumayın, onların mənasını izah edin və təsiri haqqında danışın.</p>
                </div>
            </div>
            
            <div class="warning">
                <strong>Diqqət Edilməli Sahələr:</strong>
                <ul>
                    <li>SQL sorğularında NULL dəyərlərin düzgün işlənilməsi</li>
                    <li>Endirim və maya dəyərinin düzgün hesablanması</li>
                    <li>Qaytarma və ləğv edilmiş sifarişlərin düzgün təsnifatı</li>
                    <li>Excel vizuallaşdırmasında məlumatın doğru təmsili</li>
                    <li>Təqdimatda məlumatın aşırı yüklənməsinin qarşısının alınması</li>
                </ul>
            </div>
        </div>

        <footer>
            <p>© 2024 Retail E-commerce Sales Analysis Project | Prepared for Educational Purposes</p>
            <p>Designed to develop practical skills in SQL, Excel, and Business Presentation</p>
        </footer>
    </div>
</body>
</html>
