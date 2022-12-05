TMP:=$(XDG_RUNTIME_DIR)

all: french english main
main: merge
	jinja2 templates/index.html $(TMP)/thaiwara_fr.yml -o index.html
	jinja2 templates/services.html $(TMP)/thaiwara_fr.yml -o services.html
	jinja2 templates/diplome.html $(TMP)/thaiwara_fr.yml -o diplome.html
french: merge init
	jinja2 templates/index.html $(TMP)/thaiwara_fr.yml -o fr/index.html
	jinja2 templates/services.html $(TMP)/thaiwara_fr.yml -o fr/services.html
	jinja2 templates/diplome.html $(TMP)/thaiwara_fr.yml -o fr/diplome.html
english: merge init
	jinja2 templates/index.html $(TMP)/thaiwara_en.yml -o en/index.html
	jinja2 templates/services.html $(TMP)/thaiwara_en.yml -o en/services.html
	jinja2 templates/diplome.html $(TMP)/thaiwara_en.yml -o en/degree.html
merge:
	./src/merge.py content/base.yml content/fr.yml > $(TMP)/thaiwara_fr.yml
	./src/merge.py content/base.yml content/en.yml > $(TMP)/thaiwara_en.yml
init:
	mkdir -p en fr
update:
	pipenv update
test:
	./src/test.sh
dev:
	python -m http.server
build:
	docker-compose build
push: build
	docker-compose push
