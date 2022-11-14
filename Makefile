all: run french english
run:
	jinja2 templates/index.html data.yml -o index.html
	jinja2 templates/services.html data.yml -o services.html
	jinja2 templates/diplome.html data.yml -o diplome.html

french:
	jinja2 templates/index.html data.yml -o fr/index.html
	jinja2 templates/services.html data.yml -o fr/services.html
	jinja2 templates/diplome.html data.yml -o fr/diplome.html

english:
	jinja2 templates/index.html data.yml -o en/index.html
	jinja2 templates/services.html data.yml -o en/services.html
	jinja2 templates/diplome.html data.yml -o en/degree.html
