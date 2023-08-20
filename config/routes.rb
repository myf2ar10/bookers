Rails.application.routes.draw do

# メンター質問にて
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  # get 'homes/top'
  # get 'homes/new'
  # get 'homes/index'
  # get 'homes/show'
  # get 'homes/edit'

root to: 'homes#top'
  resources :books


# 自分で。チェックシート16
post 'books' => 'books#create'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
