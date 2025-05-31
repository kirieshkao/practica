<!-- Голова страницы, задаём метаданные, стили и шрифты -->
<head> 
  <meta charset="UTF-8"> <!-- Кодировка UTF-8 для корректного отображения текста -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Адаптивность для мобилок -->
  <title>MathTools - Регрессионный анализ</title> <!-- Заголовок страницы в браузере -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet"> <!-- Подключаем шрифт Roboto -->
  <link href="/static/css/style.css" rel="stylesheet"> <!-- Кастомный CSS для стилей -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"> <!-- Иконки Font Awesome -->
</head>

<!-- Основной раздел с калькулятором и теорией регрессии -->
<section class="calculator-section">
  <!-- Кнопка возврата на главную -->
  <div class="back-to-main">
    <a href="/" class="btn btn-outline">
      <i class="fas fa-arrow-left"></i> Вернуться на главную <!-- Иконка и текст для возврата -->
    </a>
  </div>
  <!-- Контейнер для всего контента -->
  <div class="container">
    <!-- Теоретическая часть про регрессии -->
    <div class="theory-section">
      <!-- Заголовок и кнопка перехода к калькулятору -->
      <div class="theory-header">
        <h1 class="theory-title">Сравнение линейной и квадратичной регрессий</h1> <!-- Главный заголовок -->
        <a href="#calculator-form" class="btn btn-primary btn-theory">
          <i class="fas fa-calculator"></i> Перейти к калькулятору <!-- Быстрая ссылка на форму -->
        </a>
      </div>
      
      <!-- Карточки с теорией -->
      <div class="theory-content">
        <!-- Карточка про метод наименьших квадратов -->
        <div class="theory-card wide-card">
          <h2><i class="fas fa-square-root-alt"></i> Метод наименьших квадратов</h2> <!-- Заголовок с иконкой -->
          <p>Метод наименьших квадратов (МНК) — минимизирует сумму квадратов отклонений для нахождения параметров.</p> <!-- Краткое описание МНК -->
          <p>Для сравнения моделей:</p>
          <ul>
            <li>Линейная: y = a₁x + a₀</li> <!-- Формула линейной регрессии -->
            <li>Квадратичная: y = a₂x² + a₁x + a₀</li> <!-- Формула квадратичной регрессии -->
          </ul>
        </div>
        
        <!-- Карточка про коэффициенты корреляции и детерминации -->
        <div class="theory-card wide-card">
          <h2><i class="fas fa-percentage"></i> Коэффициенты корреляции и детерминации</h2> <!-- Заголовок с иконкой -->
          <p><strong>R</strong> — сила и направление линейной связи.</p> <!-- Описание корреляции -->
          <p><strong>R²</strong> — доля объяснённой дисперсии модели.</p> <!-- Описание детерминации -->
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
                  <td>R<sub>лин</sub></td> <!-- Линейная корреляция -->
                  <td>R<sub>квад</sub></td> <!-- Квадратичная корреляция -->
                </tr>
                <tr>
                  <td>Коэффициент детерминации</td>
                  <td>R²<sub>лин</sub></td> <!-- Линейная детерминация -->
                  <td>R²<sub>квад</sub></td> <!-- Квадратичная детерминация -->
                </tr>
              </tbody>
            </table>
          </div>
        </div>

<!-- Карточка про выбор лучшей модели -->
        <div class="theory-card wide-card">
          <h2><i class="fas fa-ruler-combined"></i> Критерии выбора лучшей модели</h2> <!-- Заголовок с иконкой -->
          <p>Что учитывать при сравнении моделей:</p>
          
          <h3>1. Коэффициент детерминации (R²)</h3> <!-- Подраздел R² -->
          <p>Доля объяснённой дисперсии:</p>
          <ul>
            <li>Ближе к 1 — лучше модель</li> <!-- Интерпретация R² -->
            <li>Квадратичная модель всегда не хуже линейной</li> <!-- Преимущество квадратичной -->
            <li>R² должен значительно улучшаться для сложной модели</li> <!-- Усложнение оправдано -->
          </ul>
          
          <div class="formula-box">
            R² = 1 - (SS<sub>res</sub> / SS<sub>tot</sub>) <!-- Формула R² -->
            <div class="formula-description">
              где SS<sub>res</sub> — сумма квадратов остатков, SS<sub>tot</sub> — общая сумма квадратов <!-- Описание формулы -->
            </div>
          </div>

          <h3>2. Статистическая значимость</h3> <!-- Подраздел значимости -->
          <p>Для квадратичной модели проверяем:</p>
          <ul>
            <li>Значимость a₂ (p-value < 0.05)</li> <!-- Значимость квадратичного коэффициента -->
            <li>Если a₂ незначим — берём линейную</li> <!-- Предпочтение линейной модели -->
          </ul>

          <h3>3. Анализ остатков</h3> <!-- Подраздел остатков -->
          <p>Проверяем допущения регрессии:</p>
          <ul>
            <li>Остатки случайны, без закономерностей</li> <!-- Случайность остатков -->
            <li>Нормальность остатков (QQ-plot)</li> <!-- Проверка нормальности -->
            <li>Гомоскедастичность (постоянная дисперсия)</li> <!-- Постоянная дисперсия -->
          </ul>
        </div>

        <!-- Карточка про интерпретацию корреляции -->
        <div class="theory-card wide-card">
          <h2><i class="fas fa-project-diagram"></i> Интерпретация коэффициентов корреляции</h2> <!-- Заголовок с иконкой -->
          
          <div class="correlation-scale">
            <div class="scale-item">
              <span class="scale-value">0.0 - 0.3</span>
              <span class="scale-label">Слабая корреляция</span> <!-- Диапазон слабой корреляции -->
            </div>
            <div class="scale-item">
              <span class="scale-value">0.3 - 0.7</span>
              <span class="scale-label">Умеренная корреляция</span> <!-- Диапазон умеренной корреляции -->
            </div>
            <div class="scale-item">
              <span class="scale-value">0.7 - 0.9</span>
              <span class="scale-label">Сильная корреляция</span> <!-- Диапазон сильной корреляции -->
            </div>
            <div class="scale-item">
              <span class="scale-value">0.9 - 1.0</span>
              <span class="scale-label">Очень сильная корреляция</span> <!-- Диапазон очень сильной корреляции -->
            </div>
          </div>

          <h3>Особенности моделей:</h3> <!-- Подраздел про корреляцию моделей -->
          <p><strong>Линейная:</strong> Пирсон (r) — сила линейной связи</p> <!-- Линейная корреляция -->
          <p><strong>Квадратичная:</strong> Множественный R — учитывает нелинейность</p> <!-- Квадратичная корреляция -->
          
          <div class="warning-box">
            <i class="fas fa-exclamation-triangle"></i>
            <strong>Важно:</strong> Высокий R² не гарантирует хорошую модель, может быть переобучение при малом объёме данных. <!-- Предупреждение о переобучении -->
          </div>
        </div>

<!-- Карточка про визуализацию -->
        <div class="theory-card wide-card">
          <h2><i class="fas fa-chart-line"></i> Визуализация результатов</h2> <!-- Заголовок с иконкой -->
          <p>На графике показаны:</p>
          <ul>
            <li>Исходные точки</li> <!-- Оригинальные данные -->
            <li>Линейная прямая</li> <!-- Линейная регрессия -->
            <li>Квадратичная кривая</li> <!-- Квадратичная регрессия -->
            <li>Прогнозные значения</li> <!-- Прогнозы, если есть -->
          </ul>
          <div class="chart-container">
            <img src="/static/images/comparison2.jpg" alt="Сравнение моделей регрессии" class="chart-image"> <!-- Плейсхолдер для графика -->
          </div>
        </div>
      </div>
      
      <!-- Пример решения задачи -->
      <div class="example-section">
        <h2 class="example-title"><i class="fas fa-tasks"></i> Пример решения задачи</h2> <!-- Заголовок примера -->
        <div class="example-card wide-card">
          <h3>Исходные данные:</h3> <!-- Входные данные -->
          <table class="example-table">
            <thead>
              <tr>
                <th>X</th>
                <th>Y</th>
              </tr>
            </thead>
            <tbody>
              <tr><td>1</td><td>2.1</td></tr> <!-- Пример точек данных -->
              <tr><td>2</td><td>3.9</td></tr>
              <tr><td>3</td><td>6.2</td></tr>
              <tr><td>4</td><td>8.1</td></tr>
              <tr><td>5</td><td>10.5</td></tr>
            </tbody>
          </table>
          
          <h3>Результаты:</h3> <!-- Результаты расчётов -->
          <div class="example-results">
            <div class="example-model">
              <h4>Линейная регрессия:</h4> <!-- Линейные результаты -->
              <p>Уравнение: y = 2.12x + 0.02</p> <!-- Уравнение -->
              <p>R (корреляция): 0.996</p> <!-- Корреляция -->
              <p>R² (детерминация): 0.992</p> <!-- Детерминация -->
            </div>
            <div class="example-model">
              <h4>Квадратичная регрессия:</h4> <!-- Квадратичные результаты -->
              <p>Уравнение: y = 0.01x² + 2.08x + 0.05</p> <!-- Уравнение -->
              <p>R (корреляция): 0.996</p> <!-- Корреляция -->
              <p>R² (детерминация): 0.992</p> <!-- Детерминация -->
            </div>
          </div>
          
          <h3>Прогноз для X = 6, 7, 8:</h3> <!-- Прогнозные значения -->
          <table class="example-table">
            <thead>
              <tr>
                <th>X</th>
                <th>Y (линейная)</th>
                <th>Y (квадратичная)</th>
              </tr>
            </thead>
            <tbody>
              <tr><td>6</td><td>12.74</td><td>12.77</td></tr> <!-- Прогнозы -->
              <tr><td>7</td><td>14.86</td><td>14.88</td></tr>
              <tr><td>8</td><td>16.98</td><td>17.01</td></tr>
            </tbody>
          </table>
          
          <h3>Вывод:</h3> <!-- Вывод по примеру -->
          <div class="example-conclusion">
            <p>Обе модели дают R² = 0.992 — отличная точность.</p> <!-- Итог точности -->
            <p>Линейная модель лучше, так как:</p>
            <ul>
              <li>Проще (меньше параметров)</li> <!-- Простота -->
              <li>Результаты почти идентичны</li> <!-- Схожесть результатов -->
              <li>Квадратичный коэффициент мал (0.01)</li> <!-- Низкая значимость a₂ -->
            </ul>
            <p>Для прогноза лучше линейная из-за простоты.</p> <!-- Рекомендация -->
          </div>
        </div>
      </div>
    </div>
    
    <!-- Форма калькулятора -->
    <div class="calculator-form" id="calculator-form">
      <h2 class="form-title"><i class="fas fa-sliders-h"></i> Калькулятор сравнения моделей</h2> <!-- Заголовок формы -->
      
      <!-- Ввод данных -->
      <div class="data-input-section">
        <h3><i class="fas fa-table"></i> Ввод данных</h3> <!-- Подраздел ввода -->
        <div class="input-actions">
          <button class="btn btn-secondary" id="generate-data">
            <i class="fas fa-random"></i> Сгенерировать данные <!-- Генерация тестовых данных -->
          </button>
          <button class="btn btn-outline" id="clear-data">
            <i class="fas fa-trash"></i> Очистить <!-- Очистка таблицы -->
          </button>
          <button class="btn btn-data" id="data">
          <i class="fas fa-cal"></i> Данные из файла <!-- Запуск расчётов -->
        </button>
        </div>
        
        <!-- Таблица для ввода X, Y -->
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
                <td>1</td> <!-- Номер строки -->
                <td><input type="number" step="any" class="form-control x-input" placeholder="Введите x"></td> <!-- Поле для X -->
                <td><input type="number" step="any" class="form-control y-input" placeholder="Введите y"></td> <!-- Поле для Y -->
                <td><button class="btn btn-icon btn-remove-row"><i class="fas fa-times"></i></button></td> <!-- Удаление строки -->
              </tr>
            </tbody>
          </table>
          <button class="btn btn-sm btn-add-row" id="add-row">
            <i class="fas fa-plus"></i> Добавить строку <!-- Добавление строки -->
          </button>
        </div>
        <div class="error-message" id="data-error"></div> <!-- Место для ошибок ввода -->
      </div>
      
      <!-- Ввод значений для прогноза -->
      <div class="prediction-section">
        <h3><i class="fas fa-crystal-ball"></i> Прогнозирование</h3> <!-- Подраздел прогноза -->
        <div class="form-group">
          <label for="prediction-input">Введите значения X для прогноза (через запятую):</label> <!-- Метка поля -->
          <input type="text" id="prediction-input" class="form-control" placeholder="Например: 1.5, 2, 2.5" pattern="^(\d+(\.\d+)?)(,\s*\d+(\.\d+)?){0,9}$"> <!-- Поле для X прогноза -->
          <small class="form-text">Можно ввести от 1 до 10 чисел через запятую</small> <!-- Инструкция -->
        </div>
      </div>
      
      <!-- Кнопки для расчётов -->
      <div class="calculation-actions">
        <button class="btn btn-accent btn-calculate" id="calculate-btn">
          <i class="fas fa-calculator"></i> Рассчитать <!-- Запуск расчётов -->
        </button>
        <button class="btn btn-outline" id="reset-btn">
          <i class="fas fa-redo"></i> Сбросить <!-- Сброс формы -->
        </button>
      </div>
    </div>
    
    <!-- Результаты расчётов -->
    <div class="results-section" id="results-section">
      <h3><i class="fas fa-chart-bar"></i> Результаты сравнения</h3> <!-- Заголовок результатов -->
      
      <!-- Вкладки для результатов -->
      <div class="results-tabs">
        <ul class="nav nav-tabs" id="results-tabs">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#models-comparison">Сравнение моделей</a> <!-- Вкладка сравнения -->
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#prediction-results">Прогнозные значения</a> <!-- Вкладка прогнозов -->
          </li>
        </ul>
        
        <!-- Контент вкладок -->
        <div class="tab-content">
          <!-- Сравнение моделей -->
          <div class="tab-pane active" id="models-comparison">
            <div class="models-comparison">
              <!-- Линейная регрессия -->
              <div class="model-result linear-model">
                <h4><i class="fas fa-chart-line"></i> Линейная регрессия</h4> <!-- Заголовок линейной -->
                <div class="equation">y = <span id="linear-equation">2.12x + 0.02</span></div> <!-- Уравнение -->
                <div class="coefficients">
                  <div>R (корреляция): <span id="linear-r">0.996</span></div> <!-- Корреляция -->
                  <div>R² (детерминация): <span id="linear-r2">0.992</span></div> <!-- Детерминация -->
                </div>
              </div>
<!-- Квадратичная регрессия -->
              <div class="model-result quadratic-model">
                <h4><i class="fas fa-chart-curve"></i> Квадратичная регрессия</h4> <!-- Заголовок квадратичной -->
                <div class="equation">y = <span id="quadratic-equation">0.01x² + 2.08x + 0.05</span></div> <!-- Уравнение -->
                <div class="coefficients">
                  <div>R (корреляция): <span id="quadratic-r">0.996</span></div> <!-- Корреляция -->
                  <div>R² (детерминация): <span id="quadratic-r2">0.992</span></div> <!-- Детерминация -->
                </div>
              </div>
              
              <!-- Вывод -->
              <div class="conclusion">
                <h4><i class="fas fa-lightbulb"></i> Вывод</h4> <!-- Заголовок вывода -->
                <p id="model-conclusion">Обе модели точны. Линейная лучше — проще, а квадратичный коэффициент почти ноль.</p> <!-- Текст вывода -->
              </div>
            </div>
          </div>
          
          <!-- Прогнозные результаты -->
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
                    <td>6</td><td>12.74</td><td>12.77</td><td>0.03</td> <!-- Пример прогноза -->
                  </tr>
                  <tr>
                    <td>7</td><td>14.86</td><td>14.88</td><td>0.02</td> <!-- Пример прогноза -->
                  </tr>
                  <tr>
                    <td>8</td><td>16.98</td><td>17.01</td><td>0.03</td> <!-- Пример прогноза -->
                  </tr>
                </tbody>
              </table>
              <!-- Плейсхолдер для графика прогноза -->
              <div class="prediction-chart-container">
                <div class="chart-placeholder">
                  <p class="placeholder-text">Здесь будет график прогноза</p> <!-- Текст-заглушка -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- График регрессии -->
      <div class="chart-container">
        <h4><i class="fas fa-project-diagram"></i> Графическое представление</h4> <!-- Заголовок графика -->
        <div class="chart-actions">
          <button class="btn btn-sm btn-outline" id="save-chart">
            <i class="fas fa-download"></i> Сохранить график <!-- Кнопка сохранения -->
          </button>
        </div>
        <!-- Плейсхолдер для графика -->
        <div class="chart-wrapper">
          <div class="chart-placeholder">
            <p class="placeholder-text">Здесь будет график регрессии</p> <!-- Текст-заглушка -->
          </div>
        </div>
        <!-- Легенда графика -->
        <div class="chart-legend">
          <div class="legend-item"><span class="legend-color original"></span> Исходные данные</div> <!-- Исходные данные -->
          <div class="legend-item"><span class="legend-color linear"></span> Линейная регрессия</div> <!-- Линейная регрессия -->
          <div class="legend-item"><span class="legend-color quadratic"></span> Квадратичная регрессия</div> <!-- Квадратичная регрессия -->
          <div class="legend-item"><span class="legend-color prediction"></span> Прогнозные значения</div> <!-- Прогнозы -->
        </div>
      </div>
    </div>
  </div>
      <div class="back-to-home">
      <a href="/" class="btn btn-primary">
        <i class="fas fa-arrow-left"></i> Вернуться на главную
      </a>
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