run:
	jinja2 templates/index.html data.yml -o index.html
	jinja2 templates/services.html data.yml -o services.html
	jinja2 templates/diplome.html data.yml -o diplome.html
	jinja2 templates/portfolio-details.html data.yml -o portfolio-details.html
