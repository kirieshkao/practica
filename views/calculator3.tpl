<head> 
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MathTools - Регрессионный анализ</title>
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
        <h1 class="theory-title">Сравнение линейной и квадратичной регрессий</h1>
        <a href="#calculator-form" class="btn btn-primary btn-theory">
          <i class="fas fa-calculator"></i> Перейти к калькулятору
        </a>
      </div>
      
      <div class="theory-content">
        <div class="theory-card wide-card">
          <h2><i class="fas fa-square-root-alt"></i> Метод наименьших квадратов</h2>
          <p>Метод наименьших квадратов (МНК) — математический метод, применяемый для решения различных задач, основанный на минимизации суммы квадратов отклонений некоторых функций от искомых переменных.</p>
          <p>Для сравнения моделей мы используем:</p>
          <ul>
            <li>Линейную регрессию: y = a₁x + a₀</li>
            <li>Квадратичную регрессию: y = a₂x² + a₁x + a₀</li>
          </ul>
        </div>
        
        <div class="theory-card wide-card">
          <h2><i class="fas fa-percentage"></i> Коэффициенты корреляции и детерминации</h2>
          <p><strong>Коэффициент корреляции (R)</strong> показывает силу и направление линейной связи между переменными.</p>
          <p><strong>Коэффициент детерминации (R²)</strong> указывает, какая доля дисперсии зависимой переменной объясняется моделью.</p>
          <div class="comparison-table">
            <table>
              <thead>
                <tr>
                  <th>Показатель</th>
                  <th>Линейная модель</th>
                  <th>Квадратичная модель</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Коэффициент корреляции</td>
                  <td>R<sub>лин</sub></td>
                  <td>R<sub>квад</sub></td>
                </tr>
                <tr>
                  <td>Коэффициент детерминации</td>
                  <td>R²<sub>лин</sub></td>
                  <td>R²<sub>квад</sub></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>

        <!-- Добавленная теория -->
        <div class="theory-card wide-card">
          <h2><i class="fas fa-ruler-combined"></i> Критерии выбора лучшей модели</h2>
          <p>При сравнении линейной и квадратичной моделей регрессии следует учитывать:</p>
          
          <h3>1. Коэффициент детерминации (R²)</h3>
          <p>Показывает долю объясненной дисперсии зависимой переменной:</p>
          <ul>
            <li>Чем ближе к 1, тем лучше модель описывает данные</li>
            <li>Квадратичная модель всегда даст R² не хуже линейной</li>
            <li>Но увеличение R² должно быть значительным, чтобы оправдать усложнение модели</li>
          </ul>
          
          <div class="formula-box">
            R² = 1 - (SS<sub>res</sub> / SS<sub>tot</sub>)
            <div class="formula-description">
              где SS<sub>res</sub> — сумма квадратов остатков, SS<sub>tot</sub> — общая сумма квадратов
            </div>
          </div>

          <h3>2. Статистическая значимость коэффициентов</h3>
          <p>Для квадратичной модели особенно важно проверить:</p>
          <ul>
            <li>Значимость квадратичного коэффициента (p-value < 0.05)</li>
            <li>Если квадратичный коэффициент незначим, линейная модель предпочтительнее</li>
          </ul>

          <h3>3. Анализ остатков</h3>
          <p>Проверка допущений регрессионного анализа:</p>
          <ul>
            <li>Остатки должны быть случайными и не показывать закономерностей</li>
            <li>Нормальное распределение остатков (проверяется по QQ-plot)</li>
            <li>Гомоскедастичность (постоянная дисперсия остатков)</li>
          </ul>
        </div>

        <div class="theory-card wide-card">
          <h2><i class="fas fa-project-diagram"></i> Интерпретация коэффициентов корреляции</h2>
          
          <div class="correlation-scale">
            <div class="scale-item">
              <span class="scale-value">0.0 - 0.3</span>
              <span class="scale-label">Слабая корреляция</span>
            </div>
            <div class="scale-item">
              <span class="scale-value">0.3 - 0.7</span>
              <span class="scale-label">Умеренная корреляция</span>
            </div>
            <div class="scale-item">
              <span class="scale-value">0.7 - 0.9</span>
              <span class="scale-label">Сильная корреляция</span>
            </div>
            <div class="scale-item">
              <span class="scale-value">0.9 - 1.0</span>
              <span class="scale-label">Очень сильная корреляция</span>
            </div>
          </div>

          <h3>Особенности для разных моделей:</h3>
          <p><strong>Линейная модель:</strong> Коэффициент корреляции Пирсона (r) измеряет силу линейной связи</p>
          <p><strong>Квадратичная модель:</strong> Используется множественный коэффициент корреляции (R), который учитывает нелинейные связи</p>
          
          <div class="warning-box">
            <i class="fas fa-exclamation-triangle"></i>
            <strong>Важно:</strong> Высокий R² не всегда означает хорошую модель. Может свидетельствовать о переобучении, особенно при малом количестве данных.
          </div>
        </div>


        <!-- Конец добавленной теории -->
        
        <div class="theory-card wide-card">
          <h2><i class="fas fa-chart-line"></i> Визуализация результатов</h2>
          <p>На графике отображаются:</p>
          <ul>
            <li>Исходные точки данных</li>
            <li>Линейная регрессионная прямая</li>
            <li>Квадратичная регрессионная кривая</li>
            <li>Прогнозные значения (если заданы)</li>
          </ul>
          <div class="chart-container">
            <img src="/static/images/comparison2.jpg" alt="Сравнение моделей регрессии" class="chart-image">
          </div>
        </div>
      </div>
      
      <!-- Пример решения задачи -->
      <div class="example-section">
        <h2 class="example-title"><i class="fas fa-tasks"></i> Пример решения задачи</h2>
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
              <tr><td>3</td><td>6.2</td></tr>
              <tr><td>4</td><td>8.1</td></tr>
              <tr><td>5</td><td>10.5</td></tr>
            </tbody>
          </table>
          
          <h3>Результаты расчетов:</h3>
          <div class="example-results">
            <div class="example-model">
              <h4>Линейная регрессия:</h4>
              <p>Уравнение: y = 2.12x + 0.02</p>
              <p>Коэффициент корреляции (R): 0.996</p>
              <p>Коэффициент детерминации (R²): 0.992</p>
            </div>
            <div class="example-model">
              <h4>Квадратичная регрессия:</h4>
              <p>Уравнение: y = 0.01x² + 2.08x + 0.05</p>
              <p>Коэффициент корреляции (R): 0.996</p>
              <p>Коэффициент детерминации (R²): 0.992</p>
            </div>
          </div>
          
          <h3>Прогноз для X = 6, 7, 8:</h3>
          <table class="example-table">
            <thead>
              <tr>
                <th>X</th>
                <th>Y (линейная)</th>
                <th>Y (квадратичная)</th>
              </tr>
            </thead>
            <tbody>
              <tr><td>6</td><td>12.74</td><td>12.77</td></tr>
              <tr><td>7</td><td>14.86</td><td>14.88</td></tr>
              <tr><td>8</td><td>16.98</td><td>17.01</td></tr>
            </tbody>
          </table>
          
          <h3>Вывод:</h3>
          <div class="example-conclusion">
            <p>Обе модели демонстрируют отличное соответствие исходным данным с коэффициентом детерминации R² = 0.992.</p>
            <p>В данном случае линейная модель предпочтительнее, так как:</p>
            <ul>
              <li>Она проще (содержит меньше параметров)</li>
              <li>Дает практически идентичные результаты</li>
              <li>Квадратичный коэффициент в квадратичной модели близок к нулю (0.01)</li>
            </ul>
            <p>Для прогнозирования можно использовать любую из моделей, но линейная модель более предпочтительна из-за своей простоты.</p>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Форма калькулятора -->
    <div class="calculator-form" id="calculator-form">
      <h2 class="form-title"><i class="fas fa-sliders-h"></i> Калькулятор сравнения моделей</h2>
      
      <!-- Ввод данных -->
      <div class="data-input-section">
        <h3><i class="fas fa-table"></i> Ввод данных</h3>
        <div class="input-actions">
          <button class="btn btn-secondary" id="generate-data">
            <i class="fas fa-random"></i> Сгенерировать данные
          </button>
          <button class="btn btn-outline" id="clear-data">
            <i class="fas fa-trash"></i> Очистить
          </button>
        </div>
        
        <div class="data-table-container">
          <table class="data-table" id="data-table">
            <thead>
              <tr>
                <th>№</th>
                <th>X (значение)</th>
                <th>Y (значение)</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td><input type="number" step="any" class="form-control x-input" placeholder="Введите x"></td>
                <td><input type="number" step="any" class="form-control y-input" placeholder="Введите y"></td>
                <td><button class="btn btn-icon btn-remove-row"><i class="fas fa-times"></i></button></td>
              </tr>
            </tbody>
          </table>
          <button class="btn btn-sm btn-add-row" id="add-row">
            <i class="fas fa-plus"></i> Добавить строку
          </button>
        </div>
        <div class="error-message" id="data-error"></div>
      </div>
      
      <!-- Прогнозирование -->
      <div class="prediction-section">
        <h3><i class="fas fa-crystal-ball"></i> Прогнозирование</h3>
        <div class="form-group">
          <label for="prediction-input">Введите значения X для прогноза (через запятую):</label>
          <input type="text" id="prediction-input" class="form-control" placeholder="Например: 1.5, 2, 2.5" pattern="^(\d+(\.\d+)?)(,\s*\d+(\.\d+)?){0,9}$">
          <small class="form-text">Можно ввести от 1 до 10 значений (числа через запятую)</small>
        </div>
      </div>
      
      <!-- Кнопки расчета -->
      <div class="calculation-actions">
        <button class="btn btn-accent btn-calculate" id="calculate-btn">
          <i class="fas fa-calculator"></i> Рассчитать
        </button>
        <button class="btn btn-outline" id="reset-btn">
          <i class="fas fa-redo"></i> Сбросить
        </button>
      </div>
    </div>
    
    <!-- Результаты (всегда видимые для демонстрации) -->
    <div class="results-section" id="results-section">
      <h3><i class="fas fa-chart-bar"></i> Результаты сравнения</h3>
      
      <div class="results-tabs">
        <ul class="nav nav-tabs" id="results-tabs">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#models-comparison">Сравнение моделей</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#prediction-results">Прогнозные значения</a>
          </li>
        </ul>
        
        <div class="tab-content">
          <div class="tab-pane active" id="models-comparison">
            <div class="models-comparison">
              <div class="model-result linear-model">
                <h4><i class="fas fa-chart-line"></i> Линейная регрессия</h4>
                <div class="equation">y = <span id="linear-equation">2.12x + 0.02</span></div>
                <div class="coefficients">
                  <div>R (корреляция): <span id="linear-r">0.996</span></div>
                  <div>R² (детерминация): <span id="linear-r2">0.992</span></div>
                </div>
              </div>
              
              <div class="model-result quadratic-model">
                <h4><i class="fas fa-chart-curve"></i> Квадратичная регрессия</h4>
                <div class="equation">y = <span id="quadratic-equation">0.01x² + 2.08x + 0.05</span></div>
                <div class="coefficients">
                  <div>R (корреляция): <span id="quadratic-r">0.996</span></div>
                  <div>R² (детерминация): <span id="quadratic-r2">0.992</span></div>
                </div>
              </div>
              
              <div class="conclusion">
                <h4><i class="fas fa-lightbulb"></i> Вывод</h4>
                <p id="model-conclusion">Обе модели демонстрируют отличное соответствие исходным данным. Линейная модель предпочтительнее из-за своей простоты, так как квадратичный коэффициент близок к нулю.</p>
              </div>
            </div>
          </div>
          
          <div class="tab-pane" id="prediction-results">
            <div class="prediction-results">
              <table class="prediction-table">
                <thead>
                  <tr>
                    <th>X</th>
                    <th>Y (линейная)</th>
                    <th>Y (квадратичная)</th>
                    <th>Разница</th>
                  </tr>
                </thead>
                <tbody id="prediction-table-body">
                  <tr>
                    <td>6</td>
                    <td>12.74</td>
                    <td>12.77</td>
                    <td>0.03</td>
                  </tr>
                  <tr>
                    <td>7</td>
                    <td>14.86</td>
                    <td>14.88</td>
                    <td>0.02</td>
                  </tr>
                  <tr>
                    <td>8</td>
                    <td>16.98</td>
                    <td>17.01</td>
                    <td>0.03</td>
                  </tr>
                </tbody>
              </table>
              <div class="prediction-chart-container">
                <div class="chart-placeholder">
                  <p class="placeholder-text">Здесь будет график прогноза</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- График -->
      <div class="chart-container">
        <h4><i class="fas fa-project-diagram"></i> Графическое представление</h4>
        <div class="chart-actions">
          <button class="btn btn-sm btn-outline" id="save-chart">
            <i class="fas fa-download"></i> Сохранить график
          </button>
        </div>
        <div class="chart-wrapper">
          <div class="chart-placeholder">
            <p class="placeholder-text">Здесь будет график регрессии</p>
          </div>
        </div>
        <div class="chart-legend">
          <div class="legend-item"><span class="legend-color original"></span> Исходные данные</div>
          <div class="legend-item"><span class="legend-color linear"></span> Линейная регрессия</div>
          <div class="legend-item"><span class="legend-color quadratic"></span> Квадратичная регрессия</div>
          <div class="legend-item"><span class="legend-color prediction"></span> Прогнозные значения</div>
        </div>
      </div>
    </div>
  </div>
</section>