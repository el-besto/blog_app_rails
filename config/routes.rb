Rails.application.routes.draw do
  
# Article Routes
  root to: 'articles#index'

  # route to simplify testing
  get '/new', to: 'articles#new'
  
  # keep REST-ful
  get '/', to: 'articles#index'

  # all Articles
  get '/articles', to: 'articles#index', as: 'articles'

  # new Article
  get '/articles/new', to: 'articles#new', as: 'new_article'

  # show Article
  get '/articles/:id', to: 'articles#show', as: 'article'

  # edit Article
  get '/articles/:id/edit', to: 'articles#edit', as: 'edit_article'

  # post Article; initial Create
  post '/articles', to: 'articles#create', as: 'create_article'

  # update Article
  patch '/articles/:id', to: 'articles#update', as: 'update_article'

  # delete Article
  delete '/articles/:id', to: 'articles#destroy', as: 'destroy_article'

end
