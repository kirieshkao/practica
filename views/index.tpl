
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MathTools - Главная</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
  <link href="/static/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>



<section class="hero">
  <div class="container">
    <div class="hero-content">
      <h1 class="hero-title">Профессиональные инструменты для анализа данных</h1>
      <p class="hero-subtitle">Решайте сложные математические задачи с помощью современных методов регрессионного анализа</p>
      <div class="hero-buttons">
        <a href="#calculators" class="btn btn-accent">
          <i class="fas fa-calculator"></i> Попробовать калькуляторы
        </a>
        <a href="/about" class="btn btn-outline">
          <i class="fas fa-users"></i> О нашей команде
        </a>
      </div>
    </div>
  </div>
</section>

<!-- Features Section -->
<section class="section features-section" id="features">
  <div class="container">
    <h2 class="section-title">Наши преимущества</h2>
    <p class="section-subtitle">Почему MathTools выбирают студенты и преподаватели</p>
    
    <div class="features-grid">
      <div class="feature-card">
        <div class="feature-image">
          <img src="/static/images/accuracy.jpg" alt="Точность расчетов">
        </div>
        <div class="feature-content">
          <h3 class="feature-title">Академическая точность</h3>
          <p class="feature-text">Используем проверенные алгоритмы, соответствующие стандартам математического анализа</p>
          <a href="/about" class="feature-link">Подробнее о методологии</a>
        </div>
      </div>
      
      <div class="feature-card">
        <div class="feature-image">
          <img src="/static/images/education.jpg" alt="Образовательный подход">
        </div>
        <div class="feature-content">
          <h3 class="feature-title">Образовательный фокус</h3>
          <p class="feature-text">Подробные объяснения каждого этапа расчета с методическими рекомендациями</p>
          <a href="/about" class="feature-link">Узнать о нашем подходе</a>
        </div>
      </div>
      
      <div class="feature-card">
        <div class="feature-image">
          <img src="/static/images/accessibility.jpg" alt="Визуализация данных">
        </div>
        <div class="feature-content">
          <h3 class="feature-title">Наглядные результаты</h3>
          <p class="feature-text">Профессиональная визуализация данных с возможностью экспорта графиков</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- How It Works Section -->
<section class="section steps-section">
  <div class="container">
    <h2 class="section-title">Как работать с нашими инструментами?</h2>
    <p class="section-subtitle">Простой процесс для получения точных результатов</p>
    
    <div class="steps-container">
      <div class="step">
        <div class="step-number">1</div>
        <div class="step-image">
          <img src="/static/images/step1.jpg" alt="Ввод данных">
        </div>
        <div class="step-content">
          <h3 class="step-title">Подготовка данных</h3>
          <p class="step-text">Загрузите таблицу данных или введите значения вручную в удобном формате</p>
        </div>
      </div>
      
      <div class="step">
        <div class="step-number">2</div>
        <div class="step-image">
          <img src="/static/images/step2.jpg" alt="Выбор метода">
        </div>
        <div class="step-content">
          <h3 class="step-title">Выбор алгоритма</h3>
          <p class="step-text">Подберите оптимальный метод анализа для вашего типа данных</p>
          <a href="/about" class="step-link">Как выбрать метод?</a>
        </div>
      </div>
      
      <div class="step">
        <div class="step-number">3</div>
        <div class="step-image">
          <img src="/static/images/step3.jpg" alt="Получение результата">
        </div>
        <div class="step-content">
          <h3 class="step-title">Анализ результатов</h3>
          <p class="step-text">Получите детальный отчет с графиками и статистическими показателями</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Calculators Section -->
<section class="section calculators-section" id="calculators">
  <div class="container">
    <h2 class="section-title">Наши аналитические инструменты</h2>
    <p class="section-subtitle">Выберите нужный калькулятор для решения вашей задачи</p>
    
    <div class="calculators-grid">
      <div class="calculator-card">
        <div class="calculator-image">
          <img src="/static/images/linear.jpg" alt="Линейная регрессия">
        </div>
        <div class="calculator-content">
          <h3 class="calculator-title">Линейная регрессия</h3>
          <p class="calculator-text">Анализ линейной зависимости между переменными с расчетом коэффициентов и доверительных интервалов</p>
          <div class="calculator-meta">
            <span class="meta-item"><i class="fas fa-chart-line"></i> График зависимости</span>
            <span class="meta-item"><i class="fas fa-calculator"></i> Расчет R²</span>
          </div>
          <a href="/calculator1" class="btn btn-primary">Открыть калькулятор</a>
        </div>
      </div>
      
      <div class="calculator-card">
        <div class="calculator-image">
          <img src="/static/images/quadratic.jpg" alt="Квадратичная регрессия">
        </div>
        <div class="calculator-content">
          <h3 class="calculator-title">Квадратичная регрессия</h3>
          <p class="calculator-text">Анализ нелинейных зависимостей с помощью полинома второй степени</p>
          <div class="calculator-meta">
            <span class="meta-item"><i class="fas fa-chart-bar"></i> Кривая регрессии</span>
            <span class="fas fa-calculator"></i> Расчет коэффициентов</span>
          </div>
          <a href="/calculator2" class="btn btn-primary">Открыть калькулятор</a>
        </div>
      </div>
      
      <div class="calculator-card">
        <div class="calculator-image">
          <img src="/static/images/comparison.jpg" alt="Сравнение моделей">
        </div>
        <div class="calculator-content">
          <h3 class="calculator-title">Сравнение моделей</h3>
          <p class="calculator-text">Сравнение качества линейной и квадратичной регрессий для ваших данных</p>
          <div class="calculator-meta">
            <span class="meta-item"><i class="fas fa-balance-scale"></i> Сравнение R²</span>
            <span class="meta-item"><i class="fas fa-chart-pie"></i> Визуализация</span>
          </div>
          <a href="/calculator3" class="btn btn-primary">Открыть калькулятор</a>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Applications Section -->
<section class="section applications-section">
  <div class="container">
    <h2 class="section-title">Где применяются наши инструменты?</h2>
    <p class="section-subtitle">Примеры практического использования в науке и образовании</p>
    
    <div class="applications-grid">
      <div class="application-card">
        <div class="application-image">
          <img src="/static/images/app-science.jpg" alt="Научные исследования">
        </div>
        <div class="application-content">
          <h3 class="application-title">Научные исследования</h3>
          <p class="application-text">Анализ экспериментальных данных в физике, биологии, экономике и других науках</p>
        </div>
      </div>
      
      <div class="application-card">
        <div class="application-image">
          <img src="/static/images/app-education.jpg" alt="Образование">
        </div>
        <div class="application-content">
          <h3 class="application-title">Учебный процесс</h3>
          <p class="application-text">Помощь студентам в освоении методов статистического анализа данных</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- CTA Section -->
<section class="section cta-section">
  <div class="container">
    <div class="cta-card">
      <div class="cta-content">
        <h2 class="cta-title">Нужна помощь с анализом данных?</h2>
        <p class="cta-text">Наши специалисты готовы ответить на ваши вопросы и помочь с интерпретацией результатов</p>
        <div class="cta-buttons">
          <a href="/about#team" class="btn btn-accent btn-large">
            <i class="fas fa-envelope"></i> Связаться с нами
          </a>
          <a href="#calculators" class="btn btn-outline btn-large">
            <i class="fas fa-question-circle"></i> Частые вопросы
          </a>
        </div>
      </div>
      <div class="cta-image">
        <img src="/static/images/cta-help.jpg" alt="Помощь с анализом">
      </div>
    </div>
  </div>
</section>