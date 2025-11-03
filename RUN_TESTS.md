# Инструкция по запуску тестов

## Быстрый запуск всех тестов

```bash
./run_all_tests.sh
```

## Запуск каждой части отдельно

### Part 1: Unit тесты

```bash
cd Diplom_1
pip install -r requirements.txt
pytest --cov=praktikum --cov-report=html
open htmlcov/index.html
```

**Результат:** HTML отчет о покрытии кода в `htmlcov/index.html`

---

### Part 2: API тесты

```bash
cd Diplom_2
pip install -r requirements.txt
pytest --alluredir=allure-results
python3 generate_allure_report.py
open allure-report/index.html
```

**Результат:** Allure отчет в `allure-report/index.html`

---

### Part 3: Веб-тесты

```bash
cd Diplom_3
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

**Результат:** Allure отчет с таймингами по браузерам в `allure-report/index.html`

---

## Установка драйверов для веб-тестов (Part 3)

### Chrome (ChromeDriver)

**macOS:**
```bash
brew install chromedriver
```

**Вручную:**
1. Скачать с https://chromedriver.chromium.org/
2. Распаковать в `/usr/local/bin/` или добавить в PATH

### Firefox (GeckoDriver)

**macOS:**
```bash
brew install geckodriver
```

**Вручную:**
1. Скачать с https://github.com/mozilla/geckodriver/releases
2. Распаковать в `/usr/local/bin/` или добавить в PATH

---

## Запуск отдельных тестов

### Part 1
```bash
cd Diplom_1
pytest tests/test_bun.py              # Тесты для Bun
pytest tests/test_burger.py           # Тесты для Burger
pytest tests/test_ingredient.py       # Тесты для Ingredient
pytest tests/test_database.py         # Тесты для Database
```

### Part 2
```bash
cd Diplom_2
pytest tests/test_user_creation.py   # Тесты создания пользователя
pytest tests/test_user_login.py       # Тесты логина
pytest tests/test_user_update.py      # Тесты обновления
pytest tests/test_order_creation.py   # Тесты создания заказа
pytest tests/test_order_retrieval.py  # Тесты получения заказов
```

### Part 3
```bash
cd Diplom_3
pytest tests/test_password_recovery.py  # Тесты восстановления пароля
pytest tests/test_personal_account.py    # Тесты личного кабинета
pytest tests/test_main_functionality.py  # Тесты основного функционала
pytest tests/test_orders_feed.py         # Тесты ленты заказов

# В конкретном браузере
pytest tests/test_password_recovery.py -k "chrome"
pytest tests/test_password_recovery.py -k "firefox"
```

---

## Проверка результатов

- **Part 1:** Откройте `Diplom_1/htmlcov/index.html` в браузере
- **Part 2:** Откройте `Diplom_2/allure-report/index.html` в браузере
- **Part 3:** Откройте `Diplom_3/allure-report/index.html` в браузере

---

## Требования

- Python 3.7+
- pip
- Для Part 3: ChromeDriver и GeckoDriver

