<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MathTools - Линейная регрессия</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
  <link href="/static/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>

<section class="calculator-section">
  <div class="back-to-main">
    <a href="/" class="btn btn-outline">
      <i class="fas fa-arrow-left"></i> Вернуться на главную
    </a>
  </div>
  
  <div class="container">
    <!-- Теоретическая часть -->
    <div class="theory-section">
      <div class="theory-header">
        <h1 class="theory-title"><i class="fas fa-chart-line"></i> Линейная регрессия методом наименьших квадратов</h1>
        <a href="#calculator-form" class="btn btn-primary btn-theory">
          <i class="fas fa-calculator"></i> Перейти к калькулятору
        </a>
      </div>
      
      <div class="theory-content">
        <div class="theory-card wide-card">
          <h2><i class="fas fa-square-root-alt"></i> Аппроксимация многочленом 1-й степени</h2>
          <p>Метод наименьших квадратов позволяет найти коэффициенты линейной функции:</p>
          <p class="equation">y = P₁(x) = a₁x + a₀</p>
          <p>где:</p>
          <ul>
            <li><strong>a₁</strong> - коэффициент наклона (изменение Y при изменении X на 1)</li>
            <li><strong>a₀</strong> - свободный член (значение Y при X = 0)</li>
          </ul>
          <p>Цель метода - минимизировать сумму квадратов отклонений между реальными и расчетными значениями.</p>
        </div>
        
        <div class="theory-card wide-card">
          <h2><i class="fas fa-calculator"></i> Расчет коэффициентов</h2>
          <p>Коэффициенты вычисляются по формулам:</p>
          <div class="equation-group">
            <p>a₁ = (nΣxy - ΣxΣy) / (nΣx² - (Σx)²)</p>
            <p>a₀ = (Σy - a₁Σx) / n</p>
          </div>
          <p>где:</p>
          <ul>
            <li>n - количество точек данных</li>
            <li>Σxy - сумма произведений X и Y</li>
            <li>Σx, Σy - суммы значений X и Y</li>
            <li>Σx² - сумма квадратов X</li>
          </ul>
        </div>
        
        <div class="theory-card wide-card">
          <h2><i class="fas fa-percentage"></i> Коэффициент детерминации R²</h2>
          <p>Показывает качество аппроксимации:</p>
          <p class="equation">R² = 1 - (Σ(yᵢ - ŷᵢ)² / Σ(yᵢ - ȳ)²)</p>
          <p>Интерпретация:</p>
          <ul>
            <li>0.9 ≤ R² ≤ 1 - отличная аппроксимация</li>
            <li>0.7 ≤ R² < 0.9 - хорошая</li>
            <li>R² < 0.5 - слабая зависимость</li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Пример решения задачи -->
    <div class="example-section">
      <h2 class="example-title"><i class="fas fa-tasks"></i> Пример расчета</h2>
      <div class="example-card wide-card">
        <h3>Исходные данные:</h3>
        <table class="example-table">
          <thead>
            <tr>
              <th>X</th>
              <th>Y</th>
            </tr>
          </thead>
          <tbody>
            <tr><td>1</td><td>2.1</td></tr>
            <tr><td>2</td><td>3.8</td></tr>
            <tr><td>3</td><td>6.0</td></tr>
            <tr><td>4</td><td>8.2</td></tr>
            <tr><td>5</td><td>12.0</td></tr>
          </tbody>
        </table>
        
        <h3>Результаты расчетов:</h3>
        <div class="example-model">
          <h4>Уравнение линейной регрессии:</h4>
          <p class="equation">y = 2.47x - 0.54</p>
          <div class="coefficients">
            <div><strong>a₁</strong> (коэффициент наклона): 2.47</div>
            <div><strong>a₀</strong> (свободный член): -0.54</div>
            <div><strong>Коэффициент детерминации R²:</strong> 0.96</div>
          </div>
        </div>
        
        <h3>Графическое представление:</h3>
        <div class="chart-container">
          <img src="/static/images/linear_example.jpg" alt="Пример графика линейной регрессии" class="chart-image">
          <div class="chart-legend">
            <div class="legend-item"><span class="legend-color original"></span> Исходные данные</div>
            <div class="legend-item"><span class="legend-color linear"></span> Линейная регрессия</div>
          </div>
        </div>
        
        <h3>Вывод:</h3>
        <div class="example-conclusion">
          <p>Высокий коэффициент детерминации (R² = 0.96) свидетельствует о сильной линейной зависимости. Положительный коэффициент a₁ = 2.47 показывает, что при увеличении X на 1, Y в среднем увеличивается на 2.47.</p>
        </div>
      </div>
    </div>
    
    <!-- Форма калькулятора -->
    <div class="calculator-form" id="calculator-form">
      <h2 class="form-title"><i class="fas fa-calculator"></i> Калькулятор линейной регрессии</h2>
      
      <!-- Ввод данных -->
      <div class="data-input-section">
        <h3><i class="fas fa-table"></i> Ввод данных</h3>
        <div class="input-actions">
          <button class="btn btn-secondary" id="generate-data">
            <i class="fas fa-random"></i> Пример данных
          </button>
          <button class="btn btn-outline" id="clear-data">
            <i class="fas fa-trash"></i> Очистить
          </button>
          <button class="btn btn-secondary" id="data">
            <i class="fas fa-random"></i> Данные из файла
          </button>
        </div>
        
        <div class="data-table-container">
          <table class="data-table" id="data-table">
            <thead>
              <tr>
                <th>№</th>
                <th>X</th>
                <th>Y</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td><input type="number" class="form-control x-input" placeholder="Введите x" step="any"></td>
                <td><input type="number" class="form-control y-input" placeholder="Введите y" step="any"></td>
                <td><button class="btn btn-icon btn-remove-row" disabled><i class="fas fa-times"></i></button></td>
              </tr>
            </tbody>
          </table>
          <button class="btn btn-sm btn-add-row" id="add-row">
            <i class="fas fa-plus"></i> Добавить строку
          </button>
        </div>
        <div class="error-message" id="data-error"></div>
        <div class="data-requirements">
          <p><i class="fas fa-info-circle"></i> Для расчета требуется минимум 3 точки данных</p>
        </div>
      </div>
      
      <!-- Кнопки расчета -->
      <div class="calculation-actions">
        <button class="btn btn-accent btn-calculate" id="calculate-btn">
          <i class="fas fa-calculator"></i> Рассчитать коэффициенты
        </button>
        <button class="btn btn-outline" id="reset-btn">
          <i class="fas fa-redo"></i> Сбросить
        </button>
      </div>
      
      <!-- Результаты -->
      <div class="results-section" id="results-section">
        <h3><i class="fas fa-chart-bar"></i> Результаты анализа</h3>
        
        <div class="model-result linear-model">
          <h4><i class="fas fa-chart-line"></i> Уравнение регрессии</h4>
          <div class="equation">y = <span id="linear-equation">0x + 0</span></div>
          
          <div class="coefficients">
            <div class="coefficient">
              <span class="coef-name">a₁ (коэффициент наклона):</span>
              <span class="coef-value" id="slope-value">0</span>
            </div>
            <div class="coefficient">
              <span class="coef-name">a₀ (свободный член):</span>
              <span class="coef-value" id="intercept-value">0</span>
            </div>
          </div>
          
          <div class="quality-metrics">
            <div class="metric">
              <span class="metric-name">Коэффициент детерминации R²:</span>
              <span class="metric-value" id="r-squared">0</span>
              <div class="progress-bar">
                <div class="progress-fill" id="r2-bar"></div>
              </div>
              <div class="metric-description" id="r2-description">Введите данные для расчета</div>
            </div>
          </div>
          
          <div class="conclusion">
            <h4><i class="fas fa-lightbulb"></i> Интерпретация результатов</h4>
            <p id="model-conclusion">После расчета здесь появится интерпретация коэффициентов и качества модели.</p>
          </div>
        </div>
        
        <!-- График -->
        <div class="chart-container">
          <h4><i class="fas fa-project-diagram"></i> Графическое представление</h4>
          <div class="chart-actions">
            <button class="btn btn-sm btn-outline" id="save-chart" disabled>
              <i class="fas fa-download"></i> Сохранить график
            </button>
          </div>
          <div class="chart-wrapper">
            <div class="chart-placeholder">
              <p class="placeholder-text">График будет отображен после расчета</p>
            </div>
          </div>
          <div class="chart-legend">
            <div class="legend-item"><span class="legend-color original"></span> Исходные данные</div>
            <div class="legend-item"><span class="legend-color linear"></span> Линейная регрессия</div>
          </div>
        </div>
      </div>
    </div>
  </div>
    <!-- Подвал сайта -->
<footer class="site-footer">
  <div class="container">
    <div class="footer-content">
      <!-- Логотип и описание -->
      <div class="footer-about">
        <div class="footer-logo">
          <i class="fas fa-square-root-alt"></i> MathTools
        </div>
        <p class="footer-description">
          Бесплатные онлайн-калькуляторы для статистического анализа и регрессионного моделирования
        </p>
      </div>

      <!-- Контактная информация -->
      <div class="footer-contact">
        <h4 class="footer-title">Контакты</h4>
        <ul class="footer-contact-info">
          <li><i class="fas fa-envelope"></i> support@mathtools.ru</li>
          <li><i class="fas fa-phone"></i> +7 (XXX) XXX-XX-XX</li>
          <li><i class="fas fa-map-marker-alt"></i> Россия, Москва</li>
        </ul>
      </div>
    </div>

    <!-- Копирайт и дополнительная информация -->
    <div class="footer-bottom">
      <div class="copyright">
        &copy; 2025 MathTools. Все права защищены.
      </div>
      <div class="footer-legal">
        <a href="/privacy">Политика конфиденциальности</a>
        <a href="/terms">Условия использования</a>
      </div>
    </div>
  </div>
</footer>
</section>