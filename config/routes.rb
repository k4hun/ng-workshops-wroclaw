Rails.application.routes.draw do
  resources :students do
    get :subjects
    get :payments
  end

  resources :teachers do
  	get :subjects
  end
  get 'subjects' => 'reports#subjects', as: 'report_subjects'
  resources :visitors
  resources :payments

  devise_for :users

  root to: 'students#index'
end
