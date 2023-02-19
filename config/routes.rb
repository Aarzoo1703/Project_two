Rails.application.routes.draw do
  get 'profile/edit_profile'
  post 'profile/edit_profile'
  get 'password/forgot_password'
  get 'password/reset_password'
  get '/accounts', to: "accounts#signup"
  get '/accounts/signup'
  get "accounts/login"
  post "/accounts/signup"
  post "accounts/login"
  get '/accounts/dashboard'
  get '/accounts/logout'
  get '/password/forgot_password'
  post "/password/forgot_password"
  get '/password/reset_password'
  post "/password/reset_password"
    
end
