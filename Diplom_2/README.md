# Stellar Burgers API Tests

Этот проект содержит автоматизированные тесты для API Stellar Burgers.

## Описание

Тесты покрывают следующие эндпоинты:
- Создание пользователя (`/auth/register`)
- Логин пользователя (`/auth/login`)
- Изменение данных пользователя (`/auth/user`)
- Создание заказа (`/orders`)
- Получение заказов пользователя (`/orders`)

## Установка

1. Установите зависимости:
```bash
pip install -r requirements.txt
```

2. Установите Allure:
```bash
# macOS
brew install allure

# Windows
scoop install allure

# Linux
# Следуйте инструкциям на https://docs.qameta.io/allure/
```

## Запуск тестов

### Запуск всех тестов
```bash
pytest
```

### Запуск с генерацией Allure отчета
```bash
pytest --alluredir=allure-results
allure serve allure-results
```

### Запуск конкретного класса тестов
```bash
pytest tests/test_user_creation.py::TestUserCreation
```

## Структура проекта

```
tests/
├── test_user_creation.py    # Тесты создания пользователя
├── test_user_login.py       # Тесты логина пользователя
├── test_user_update.py      # Тесты изменения данных пользователя
├── test_order_creation.py    # Тесты создания заказа
└── test_order_retrieval.py  # Тесты получения заказов

config/
├── api_config.py            # Конфигурация API
└── api_helper.py            # Вспомогательные функции
```

## Требования

- Python 3.7+
- pytest
- requests
- allure-pytest
