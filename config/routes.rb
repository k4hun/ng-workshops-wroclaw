Rails.application.routes.draw do
  resources :students do
    get :subjects
  end

  resources :teachers
  
  devise_for :users
end
