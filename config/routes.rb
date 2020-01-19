Rails.application.routes.draw do
 

  get 'pages/index'

  get 'pages/show'

  get 'pages/new'

  get 'pages/edit'

  get 'pages/delete'

  get 'sections/index'

  get 'sections/show'

  get 'sections/new'

  get 'sections/edit'

  get 'sections/delete'

  get 'section_controller/index'

  get 'section_controller/show'

  get 'section_controller/edit'

  get 'section_controller/delete'

  get 'section_controller/new'

  get 'page_controller/index'

  get 'page_controller/show'

  get 'page_controller/edit'

  get 'page_controller/delete'

  get 'page_controller/new'

  root 'demo#index'

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end


  resources :sections do
    member do
      get :delete
    end
  end

  get 'demo/index'
  get 'demo/hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
