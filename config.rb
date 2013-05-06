Sprockets::HandlebarsTemplate.options = {
  target: "Ember.TEMPLATES",
  key_name_proc: proc { |name| name.sub(%r~^app/templates/~, "") },
  precompile: true,
  precompile_proc: proc { |source| Barber::FilePrecompiler.call(source) }
}

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end
