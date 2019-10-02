Rails.application.routes.draw do

  namespace :admin do
	  get 'dashboard/main'
	  get 'dashboard/user'
	  get 'dashboard/blog'
	end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  resources :posts

  get 'query/:else', to: 'pages#something'

  get 'posts/*missing', to: 'posts#missing'
  get '/*missing', to: 'posts#missing'

 	root 'pages#home'  
end
