# Run the following every day

from philswebsite import site

# Reset Popular Pages list
site.file.json(site.dir.resources + '/data/popular_pages.json').save([])