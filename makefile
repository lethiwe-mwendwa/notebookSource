# Windows-friendly Makefile

install:
	py -m venv .venv
	.venv\Scripts\pip.exe install -r requirements.txt

serve:
	.venv\Scripts\mkdocs.exe serve

build:
	.venv\Scripts\mkdocs.exe build

freeze:
	.venv\Scripts\pip.exe freeze > requirements.txt

clean:
	if exist site rmdir /s /q site
