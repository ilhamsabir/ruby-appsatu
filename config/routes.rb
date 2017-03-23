Rails.application.routes.draw do
  resources :pets
  resources :berita
  get 'beranda/index'

  get 'beranda/home'

  devise_for :admins, controllers: {sessions: 'admins/sessions'}
  get 'page/home'

  get 'page/about'

  get 'page/blog'

  get 'page/service'

  get 'page/contact'

  get 'dashboard/index'


  devise_for :users

  root to: 'page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
