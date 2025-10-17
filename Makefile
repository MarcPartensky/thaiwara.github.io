# TMP:=$(XDG_RUNTIME_DIR)

all: french english main
main: merge
	jinja2 templates/index.html ./thaiwara_fr.yml -o index.html
	jinja2 templates/services.html ./thaiwara_fr.yml -o services.html
	jinja2 templates/diplome.html ./thaiwara_fr.yml -o diplome.html
french: merge init
	jinja2 templates/index.html ./thaiwara_fr.yml -o fr/index.html
	jinja2 templates/services.html ./thaiwara_fr.yml -o fr/services.html
	jinja2 templates/diplome.html ./thaiwara_fr.yml -o fr/diplome.html
english: merge init
	jinja2 templates/index.html ./thaiwara_en.yml -o en/index.html
	jinja2 templates/services.html ./thaiwara_en.yml -o en/services.html
	jinja2 templates/diplome.html ./thaiwara_en.yml -o en/degree.html
merge:
	./src/merge.py content/base.yml content/fr.yml > ./thaiwara_fr.yml
	./src/merge.py content/base.yml content/en.yml > ./thaiwara_en.yml
init:
	mkdir -p en fr
update:
	pipenv update
	pipenv lock -r > requirements.txt
test:
	./src/test.sh
dev:
	python -m http.server
build:
	docker-compose build
push: build
	docker-compose push
