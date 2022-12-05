all: run french english
run:
	jinja2 templates/index.html content/fr.yml -o index.html
	jinja2 templates/services.html content/fr.yml -o services.html
	jinja2 templates/diplome.html content/fr.yml -o diplome.html

french:
	jinja2 templates/index.html content/fr.yml -o fr/index.html
	jinja2 templates/services.html content/fr.yml -o fr/services.html
	jinja2 templates/diplome.html content/fr.yml -o fr/diplome.html

english:
	jinja2 templates/index.html content/en.yml -o en/index.html
	jinja2 templates/services.html content/en.yml -o en/services.html
	jinja2 templates/diplome.html content/en.yml -o en/degree.html
