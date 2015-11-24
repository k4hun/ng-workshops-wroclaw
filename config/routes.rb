Rails.application.routes.draw do
  resources :students do
    get :subjects
  end

  resources :teachers
  get 'subjects' => 'reports#subjects', as: 'report_subjects'
  resources :visitors
  
  devise_for :users

  root to: 'students#index'
end
