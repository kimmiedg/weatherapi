Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :traces, only: [:create]
    get 'weathers/forecast', to: 'weathers#forecast'
  end
  match '*a', to: 'errors#not_found', via: :get
end
