run:
	jinja2 templates/index.html data.yml -o index.html
	jinja2 templates/services.html data.yml -o services.html
<<<<<<< HEAD
	jinja2 templates/degree.html data.yml -o degree.html
	jinja2 templates/portfolio-details.html data.yml -o portfolio-details.html
=======
	jinja2 templates/diplome.html data.yml -o diplome.html

french:
	jinja2 templates/index.html data.yml -o build/fr/index.html
	jinja2 templates/services.html data.yml -o build/fr/services.html
	jinja2 templates/diplome.html data.yml -o build/fr/diplome.html

english:
	jinja2 templates/index.html data.yml -o build/en/index.html
	jinja2 templates/services.html data.yml -o build/en/services.html
	jinja2 templates/degree.html data.yml -o build/en/degree.html
>>>>>>> master
