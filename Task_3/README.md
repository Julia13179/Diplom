# Задание 3: Веб-тесты

Тесты для веб-приложения Stellar Burgers.

## Установка

```bash
pip install -r requirements.txt
```

Нужно установить драйверы браузеров:
- ChromeDriver
- GeckoDriver

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
