Rails.application.routes.draw do
  get 'users/index'
# Article Routes
  root to: 'articles#index'
  # keep REST-ful
  get '/', to: 'articles#index', as:

  # all Articles
  get '/articles', to: 'articles#index', as: 'articles'

  # new Article
  get '/articles/new', to: 'articles#new', as: 'new_article'

end
