# Задание 2: API тесты

Тесты для API Stellar Burgers.

## Установка

```bash
pip install -r requirements.txt
```

## Запуск тестов

```bash
pytest
```

Для Allure отчета:
```bash
pytest --alluredir=allure-results
python3 generate_allure_report.py
```

Отчет будет в `allure-report/index.html`.
