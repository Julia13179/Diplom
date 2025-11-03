#!/bin/bash

echo "=========================================="
echo "Запуск всех тестов дипломного проекта"
echo "=========================================="

# Часть 1: Unit тесты
echo ""
echo "📦 Часть 1: Unit тесты"
echo "----------------------------------------"
cd Diplom_1
if [ -d "venv" ]; then
    source venv/bin/activate
fi
pip install -r requirements.txt -q
pytest --cov=praktikum --cov-report=html -v
echo "✅ Unit тесты завершены"
cd ..

# Часть 2: API тесты
echo ""
echo "📦 Часть 2: API тесты"
echo "----------------------------------------"
cd Diplom_2
if [ -d "venv" ]; then
    source venv/bin/activate
fi
pip install -r requirements.txt -q
pytest --alluredir=allure-results -v
python3 generate_allure_report.py
echo "✅ API тесты завершены"
cd ..

# Часть 3: Веб-тесты
echo ""
echo "📦 Часть 3: Веб-тесты"
echo "----------------------------------------"
cd Diplom_3
if [ -d "venv" ]; then
    source venv/bin/activate
fi
pip install -r requirements.txt -q
pytest --alluredir=allure-results -v
python3 generate_allure_report.py
echo "✅ Веб-тесты завершены"
cd ..

echo ""
echo "=========================================="
echo "✅ Все тесты выполнены!"
echo "=========================================="
echo "Отчеты доступны:"
echo "- Diplom_1/htmlcov/index.html"
echo "- Diplom_2/allure-report/index.html"
echo "- Diplom_3/allure-report/index.html"

