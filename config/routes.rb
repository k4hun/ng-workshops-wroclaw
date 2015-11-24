Rails.application.routes.draw do
  resources :students do
    get :subjects
  end

  resources :teachers
  get 'subjects' => 'reports#subjects'
  resources :visitors
  
  devise_for :users
end
