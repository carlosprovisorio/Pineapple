Rails.application.routes.draw do
  root 'pages#home'
  get '/resume' => 'pages#resume'
end
