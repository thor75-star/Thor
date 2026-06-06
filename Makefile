.PHONY: help install dev test lint format clean

help:
	@echo "Comandos disponíveis:"
	@echo "  make install    - Instala dependências"
	@echo "  make dev        - Instala dependências de desenvolvimento"
	@echo "  make test       - Executa testes"
	@echo "  make lint       - Verifica código (flake8 e mypy)"
	@echo "  make format     - Formata código (black e isort)"
	@echo "  make clean      - Remove arquivos temporários"

install:
	pip install -r requirements.txt

dev: install

pip install -r requirements.txt

test:
	pytest -v --cov=src tests/

lint:
	flake8 src/ tests/
	mypy src/

format:
	black src/ tests/
	isort src/ tests/

clean:
	find . -type f -name '*.pyc' -delete
	find . -type d -name '__pycache__' -delete
	find . -type d -name '.pytest_cache' -delete
	find . -type d -name '.mypy_cache' -delete
	find . -type d -name 'htmlcov' -delete
	rm -rf build/ dist/ *.egg-info/
