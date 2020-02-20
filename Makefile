venv:
	pip3 install -r requirements.txt

test:
	molecule test
