###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
set :css_dir, 'stylesheets'
set :fonts_dir,  "fonts"
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :asset_hash
activate :relative_assets
activate :i18n
activate :external_pipeline,
         name: :webpack,
         command: build? ? './node_modules/webpack/bin/webpack.js -p --bail' : './node_modules/webpack/bin/webpack.js --watch -d',
         source: '.tmp/dist',
         latency: 1

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def resume_yml
    @resume ||= Hashie::Mash.load('./source/resume.yml')
  end
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
