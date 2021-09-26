run:
	jinja2 templates/index.html data.yml -o index.html
	jinja2 templates/services.html data.yml -o services.html
	jinja2 templates/degree.html data.yml -o degree.html

french:
	jinja2 templates/index.html data.yml -o build/fr/index.html
	jinja2 templates/services.html data.yml -o build/fr/services.html
	jinja2 templates/degree.html data.yml -o build/fr/degree.html

english:
	jinja2 templates/index.html data.yml -o build/en/index.html
	jinja2 templates/services.html data.yml -o build/en/services.html
	jinja2 templates/degree.html data.yml -o build/en/degree.html
