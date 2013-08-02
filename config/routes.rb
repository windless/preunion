Preunion::Application.routes.draw do

  resources :missions do
    member do
      post :accept
    end
  end

  delete 'session', to: 'session#destroy', as: :sign_out
  get '/auth/github/callback', to: 'session#auth'
  root to: 'home#index'

end
