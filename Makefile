PROJECT = $project
USE = development
PIP_CACHE_DIR = ${VIRTUAL_ENV}/lib/pip-cache

.SILENT:
.PHONY: all develop clean veryclean test unpack_test unpack


all: develop test


depend: ${PROJECT}.egg-info/PKG-INFO
	cp ${PROJECT}.egg-info/requires.txt .packaging/depend


develop: ${PROJECT}.egg-info/PKG-INFO
	@echo " \033[1;32m*\033[0m Installing \033[1m${PROJECT}\033[0m and \033[1;33m$(USE)\033[0m dependencies..."
	
	mkdir -p ${VIRTUAL_ENV}/lib/pip-cache .packaging
	pip install -q --compile -Ue ".[${USE}]"


clean:
	@echo " \033[1;33m*\033[0m Cleaning \033[1m${PROJECT}\033[0m bytecode..."
	
	find . -name __pycache__ -exec rm -rf {} +
	find . -iname \*.pyc -exec rm -f {} +
	find . -iname \*.pyo -exec rm -f {} +


veryclean: clean
	@echo " \033[1;33m*\033[0m Cleaning \033[1m${PROJECT}\033[0m metadata..."
	
	rm -rf *.egg-info
	rm -rf .packaging/*


test:
	@echo " \033[1;34m*\033[0m Testing \033[1m${PROJECT}\033[0m..."
	
	./setup.py -q test


unpack_test:
	# Invoke unpack with answers pre-populated suitable for Travis-CI testing of this template.


unpack:
	# Request definition for known variables.
	# Find and iterate files with variable replacements, expanding them.


${PROJECT}.egg-info/PKG-INFO: setup.py setup.cfg
	@echo " \033[1;32m*\033[0m Collecting \033[1m${PROJECT}\033[0m metadata..."
	
	./setup.py -q egg_info