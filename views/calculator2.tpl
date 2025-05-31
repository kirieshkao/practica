<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MathTools - Квадратичная регрессия</title>
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
        <h1 class="theory-title"><i class="fas fa-chart-curve"></i> Квадратичная регрессия методом наименьших квадратов</h1>
        <a href="#calculator-form" class="btn btn-primary btn-theory">
          <i class="fas fa-calculator"></i> Перейти к калькулятору
        </a>
      </div>
      
      <div class="theory-content">
        <div class="theory-card wide-card">
          <h2><i class="fas fa-square-root-alt"></i> Что такое квадратичная регрессия?</h2>
          <p>Квадратичная регрессия - это метод аппроксимации данных параболой, описываемой уравнением:</p>
          <p class="equation">y = a₂x² + a₁x + a₀</p>
          <p>Где:</p>
          <ul>
            <li><strong>a₂</strong> - квадратичный коэффициент (определяет "крутизну" параболы)</li>
            <li><strong>a₁</strong> - линейный коэффициент (наклон в точке x=0)</li>
            <li><strong>a₀</strong> - свободный член (значение при x=0)</li>
          </ul>
          <p>Метод применяется, когда данные имеют нелинейную зависимость с одним экстремумом.</p>
        </div>
        
        <div class="theory-card wide-card">
          <h2><i class="fas fa-calculator"></i> Метод наименьших квадратов</h2>
          <p>Для нахождения коэффициентов решается система нормальных уравнений:</p>
          <div class="equation-group">
            <p>a₂Σx⁴ + a₁Σx³ + a₀Σx² = Σx²y</p>
            <p>a₂Σx³ + a₁Σx² + a₀Σx = Σxy</p>
            <p>a₂Σx² + a₁Σx + a₀n = Σy</p>
          </div>
          <p>Где Σ означает сумму по всем точкам данных, n - количество точек.</p>
          <p>Решение этой системы дает оптимальные коэффициенты, минимизирующие сумму квадратов отклонений.</p>
        </div>
        
        <div class="theory-card wide-card">
          <h2><i class="fas fa-percentage"></i> Коэффициент детерминации R²</h2>
          <p>Показывает качество аппроксимации:</p>
          <p class="equation">R² = 1 - (Σ(yᵢ - ŷᵢ)² / Σ(yᵢ - ȳ)²</p>
          <p>Где:</p>
          <ul>
            <li>yᵢ - реальные значения</li>
            <li>ŷᵢ - предсказанные значения</li>
            <li>ȳ - среднее значение y</li>
          </ul>
          <p>Интерпретация:</p>
          <ul>
            <li>0.9 ≤ R² ≤ 1 - отличная аппроксимация</li>
            <li>0.7 ≤ R² < 0.9 - хорошая</li>
            <li>R² < 0.5 - плохая</li>
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
            <tr><td>2</td><td>3.9</td></tr>
            <tr><td>3</td><td>6.8</td></tr>
            <tr><td>4</td><td>11.2</td></tr>
            <tr><td>5</td><td>17.0</td></tr>
          </tbody>
        </table>
        
        <h3>Результаты расчетов:</h3>
        <div class="example-model">
          <h4>Уравнение квадратичной регрессии:</h4>
          <p class="equation">y = 0.78x² + 0.12x + 1.05</p>
          <div class="coefficients">
            <div><strong>a₂</strong> (квадратичный коэффициент): 0.78</div>
            <div><strong>a₁</strong> (линейный коэффициент): 0.12</div>
            <div><strong>a₀</strong> (свободный член): 1.05</div>
            <div><strong>Коэффициент детерминации R²:</strong> 0.997</div>
          </div>
        </div>
        
        <h3>Графическое представление:</h3>
        <div class="chart-container">
          <img src="/static/images/quadratic2.jpg" alt="Пример графика квадратичной регрессии" class="chart-image">
          <div class="chart-legend">
            <div class="legend-item"><span class="legend-color original"></span> Исходные данные</div>
            <div class="legend-item"><span class="legend-color quadratic"></span> Квадратичная регрессия</div>
          </div>
        </div>
        
        <h3>Вывод:</h3>
        <div class="example-conclusion">
          <p>Полученное уравнение хорошо описывает данные (R² = 0.997). Положительный коэффициент a₂ = 0.78 указывает на возрастающую скорость роста Y при увеличении X.</p>
        </div>
      </div>
    </div>
    
    <!-- Форма калькулятора -->
    <div class="calculator-form" id="calculator-form">
      <h2 class="form-title"><i class="fas fa-sliders-h"></i> Калькулятор квадратичной регрессии</h2>
      
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
        </div>
        
        <div class="data-table-container">
          <table class="data-table" id="data-table">
            <thead>
              <tr>
                <th width="15%">№</th>
                <th width="35%">X</th>
                <th width="35%">Y</th>
                <th width="15%"></th>
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
          <p><i class="fas fa-info-circle"></i> Для расчета требуется минимум 5 точек данных</p>
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
        
        <div class="model-result quadratic-model">
          <h4><i class="fas fa-chart-curve"></i> Уравнение регрессии</h4>
          <div class="equation">y = <span id="quadratic-equation">0x² + 0x + 0</span></div>
          
          <div class="coefficients">
            <div class="coefficient">
              <span class="coef-name">a₂ (квадратичный коэффициент):</span>
              <span class="coef-value" id="quadratic-coef">0</span>
            </div>
            <div class="coefficient">
              <span class="coef-name">a₁ (линейный коэффициент):</span>
              <span class="coef-value" id="linear-coef">0</span>
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
            <div class="legend-item"><span class="legend-color quadratic"></span> Квадратичная регрессия</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>