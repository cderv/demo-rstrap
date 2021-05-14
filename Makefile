all: build

build: build_site build_one

build_site: index.Rmd rstrap.Rmd
	Rscript -e 'rmarkdown::render_site()'

build_one: rstrap.Rmd
	Rscript \
		-e 'options(rmarkdown.rstrap = FALSE)' \
		-e 'output_options = list(theme = list(version = 4), lib_dir = "_site/site_libs", self_contained = FALSE)' \
		-e 'rmarkdown::render("$<", output_file = "_site/boostrap.html", output_options = output_options, params = list(title = "boostrap"))'

clean:
	Rscript -e 'rmarkdown::clean_site(preview = FALSE)'
