# Stellar Burgers Web Tests

Проект содержит автоматизированные веб-тесты для Stellar Burgers с использованием Selenium и Page Object Model.

## Описание

Тесты покрывают следующие сценарии:
- Восстановление пароля
- Личный кабинет (переход, история заказов, выход)
- Основной функционал (навигация, конструктор, ингредиенты, заказы)
- Лента заказов (детали заказов, счетчики, заказы в работе)

## Установка

1. Установите зависимости:
```bash
pip install -r requirements.txt
```

2. Установите драйверы браузеров:
- Chrome: [ChromeDriver](https://chromedriver.chromium.org/)
- Firefox: [GeckoDriver](https://github.com/mozilla/geckodriver/releases)

## Запуск тестов

### Запуск всех тестов
```bash
pytest
```

### Запуск с генерацией Allure отчета
```bash
# Запуск тестов с сохранением результатов
pytest --alluredir=allure-results

# Генерация HTML отчета
python3 generate_allure_report.py

# Открыть отчет
open allure-report/index.html
```

Отчет также можно открыть через Allure CLI:
```bash
allure serve allure-results
```

### Запуск тестов в конкретном браузере
```bash
pytest -k "chrome"  # для Chrome
pytest -k "firefox"  # для Firefox
```

### Запуск конкретного класса тестов
```bash
pytest tests/test_password_recovery.py::TestPasswordRecovery
```

## Структура проекта

```
pages/              # Page Objects для всех страниц
locators/           # Локаторы для элементов страниц
tests/              # Тесты
config/             # Конфигурация и утилиты
```

## Требования

- Python 3.7+
- pytest
- selenium
- allure-pytest

