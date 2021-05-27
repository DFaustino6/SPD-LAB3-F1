#setup:
		#pyhton -m venv -/flask-ml-azure
		#source ~/.flask-ml-azure/bin/activate
install:
		pip install --upgrade pip &&\
			pip install -r requirements.txt
test:
		python -m pytest -vv --cov=hello test_hello.py
		#python -m pytest --nval notebook.ipynb
lint: 
		#hadolint Dockerfile #uncomment to explore linting Dockerfiles
		pylint --disable=R,C hello.py
format:
	black *.py
	
all: install format lint test