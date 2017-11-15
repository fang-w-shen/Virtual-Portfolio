Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :todos, only: :index
  end
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :todos do
      resources :items
    end
  end

  root 'application#hello'

post 'auth/login', to: 'authentication#authenticate'
post 'signup', to: 'users#create'
end
