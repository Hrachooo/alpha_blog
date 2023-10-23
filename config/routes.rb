Rails.application.routes.draw do
    root 'pages#home'
    get 'about', to: 'pages#about'
    get 'about_developer', to:'pages#about_developer'
    resources :articles
end 