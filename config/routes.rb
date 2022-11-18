Rails.application.routes.draw do
  # root "articles#index"
  # root to: "lists#home", as: :home
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  # Defines the root path route ("/")
  end
  resources :bookmarks, only: [:destroy]
end

# pas besoin de mettre un eroute movie car pas d'action dessus
