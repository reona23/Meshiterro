Rails.application.routes.draw do
  devise_for :users
  #get 'homes/top'
  root to: "homes#top" #/ にtopページを持ってこれるようになる

  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  get 'homes/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
