setup:
	python3 -m venv ~/.hello

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	pylint --disable=R,C,W1203 hello.py

all: 
	install lint test

clean:
	rm -rf *.exe *.o *- *.mod
