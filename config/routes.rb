require 'gollum/frontend/app'

BirdsesExample::Application.routes.draw do
  # Mount Birdses
  mount Birdses::Engine => "/birdses"

  # Mount Gollum wiki app
  Precious::App.set(:gollum_path, Rails.root.join('wiki').to_s)
  Precious::App.set(:default_markup, :markdown)
  Precious::App.set(:wiki_options, {:universal_toc => false})
  mount Precious::App, at: 'gollum'

  root :to => 'welcome#index'
end
