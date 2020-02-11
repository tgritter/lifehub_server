Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Trestle::Engine.routes.draw do
    resources :articles, only: %i[new edit], module: 'articles_admin', controller: 'admin'
    resources :users, only: %i[new edit], module: 'users_admin', controller: 'admin'
    resources :todos, only: %i[new edit], module: 'todos_admin', controller: 'admin'
  end

  scope '/api/v1' do
    resources :todos
  end
  post 'authenticate', to: 'authentication#authenticate'
  
end
