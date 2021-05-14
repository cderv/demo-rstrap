all: build

build: build_site build_one

build_site: index.Rmd rstrap.Rmd
	Rscript -e 'rmarkdown::render_site()'

build_one: _bootstrap.Rmd
	Rscript \
		-e 'options(rmarkdown.rstrap = FALSE)' \
		-e 'rmarkdown::render("$<", output_file = "_site/boostrap.html", output_options = list(lib_dir = "_site/site_libs", self_contained = FALSE))'

clean:
	Rscript -e 'rmarkdown::clean_site(preview = FALSE)'
