Rails.application.routes.draw do
  #root 'post#index'
  # resources : post
  get '/post/index' , to: 'post#index'
  get'post', to: 'post#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
