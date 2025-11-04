# Инструкция по запуску тестов

## Быстрый запуск всех тестов

```bash
./run_all_tests.sh
```

## Запуск каждой части отдельно

### Part 1: Unit тесты

```bash
cd Task_1
pip install -r requirements.txt
pytest --cov=praktikum --cov-report=html
open htmlcov/index.html
```

Результат: HTML отчет о покрытии кода в htmlcov/index.html

---

### Part 2: API тесты

```bash
cd Task_2
pip install -r requirements.txt
pytest --alluredir=allure-results
python3 generate_allure_report.py
open allure-report/index.html
```

Результат: Allure отчет в allure-report/index.html

---

### Part 3: Веб-тесты

```bash
cd Task_3
pip install -r requirements.txt

# Убедитесь, что установлены драйверы браузеров:
# - ChromeDriver для Chrome
# - GeckoDriver для Firefox

# Запустить все тесты (Chrome и Firefox)
pytest --alluredir=allure-results

# Сгенерировать отчет
python3 generate_allure_report.py
open allure-report/index.html
```

Результат: Allure отчет с таймингами по браузерам в allure-report/index.html

---

## Установка драйверов для веб-тестов (Part 3)

### Chrome (ChromeDriver)

macOS:
```bash
brew install chromedriver
```

Вручную:
1. Скачать с https://chromedriver.chromium.org/
2. Распаковать в /usr/local/bin/ или добавить в PATH

### Firefox (GeckoDriver)

macOS:
```bash
brew install geckodriver
```

Вручную:
1. Скачать с https://github.com/mozilla/geckodriver/releases
2. Распаковать в /usr/local/bin/ или добавить в PATH

---

## Запуск отдельных тестов

### Part 1
```bash
cd Task_1
pytest tests/test_bun.py
pytest tests/test_burger.py
pytest tests/test_ingredient.py
pytest tests/test_database.py
```

### Part 2
```bash
cd Task_2
pytest tests/test_user_creation.py
pytest tests/test_user_login.py
pytest tests/test_user_update.py
pytest tests/test_order_creation.py
pytest tests/test_order_retrieval.py
```

### Part 3
```bash
cd Task_3
pytest tests/test_password_recovery.py
pytest tests/test_personal_account.py
pytest tests/test_main_functionality.py
pytest tests/test_orders_feed.py

# В конкретном браузере
pytest tests/test_password_recovery.py -k "chrome"
pytest tests/test_password_recovery.py -k "firefox"
```

---

## Проверка результатов

- Part 1: Откройте Task_1/htmlcov/index.html в браузере
- Part 2: Откройте Task_2/allure-report/index.html в браузере
- Part 3: Откройте Task_3/allure-report/index.html в браузере

---

## Требования

- Python 3.7+
- pip
- Для Part 3: ChromeDriver и GeckoDriver
