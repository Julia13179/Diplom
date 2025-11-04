# Чеклист для сдачи

## Проверка перед сдачей

### Task_1: Unit тесты
- [x] Все тесты проходят (53 теста)
- [x] Покрытие кода 100%
- [x] Отчет coverage: Task_1/htmlcov/index.html
- [x] Используются моки и параметризация
- [x] Все docstrings заменены на комментарии с #
- [x] Нет дубликатов строк в коде

### Task_2: API тесты
- [x] Все тесты проходят (27 тестов)
- [x] Allure отчет: Task_2/allure-report/index.html
- [x] Все эндпоинты протестированы
- [x] Все docstrings заменены на комментарии с #
- [x] Тесты независимы и создают/удаляют тестовые данные

### Task_3: Веб-тесты
- [x] Тесты готовы (34 теста для 2 браузеров)
- [x] Allure отчет: Task_3/allure-report/index.html
- [x] Page Object Model реализован
- [x] Кроссбраузерное тестирование (Chrome, Firefox)
- [x] Все docstrings заменены на комментарии с #
- [x] Используются explicit waits вместо time.sleep()

### Git репозиторий
- [x] Репозиторий: https://github.com/Julia13179/Diplom
- [x] Ветка main содержит все три части проекта
- [x] Ветка develop для Task_1
- [x] Ветка develop2 для Task_2
- [x] Ветка develop3 для Task_3

## Команды для запуска

### Task_1
```bash
cd Task_1
pip install -r requirements.txt
pytest --cov=praktikum --cov-report=html
open htmlcov/index.html
```

### Task_2
```bash
cd Task_2
pip install -r requirements.txt
pytest --alluredir=allure-results
python3 generate_allure_report.py
open allure-report/index.html
```

### Task_3
```bash
cd Task_3
pip install -r requirements.txt
# Установить драйверы: brew install chromedriver geckodriver
pytest --alluredir=allure-results
python3 generate_allure_report.py
open allure-report/index.html
```

## Pull Requests

Для каждой части проекта нужно создать Pull Request:
1. Task_1: develop -> main
2. Task_2: develop2 -> main  
3. Task_3: develop3 -> main

## Финальная проверка

- [x] Все тесты проходят
- [x] Все отчеты сгенерированы
- [x] Код не содержит docstrings (только комментарии с #)
- [x] Нет дубликатов кода
- [x] Все файлы закоммичены
- [x] Ветки готовы к созданию PR

## Ссылки на Pull Requests

После создания PR нужно добавить ссылки:
- [ ] Task_1 PR: https://github.com/Julia13179/Diplom/pull/...
- [ ] Task_2 PR: https://github.com/Julia13179/Diplom/pull/...
- [ ] Task_3 PR: https://github.com/Julia13179/Diplom/pull/...
