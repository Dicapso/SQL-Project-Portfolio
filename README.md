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
