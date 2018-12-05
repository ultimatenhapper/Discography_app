Rails.application.routes.draw do
  resources :artists do
    resources :lps
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"
end
