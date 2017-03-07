.PHONY: test flake8 isort mypy pytest

test: flake8 isort mypy pytest

flake8:
	flake8 almanac/

isort:
	isort --recursive --check-only --quiet almanac/

mypy:
	mypy --ignore-missing-imports --fast-parser almanac/

pytest:
	py.test --spec --cov=almanac tests



build: test
	python setup.py bdist_wheel

