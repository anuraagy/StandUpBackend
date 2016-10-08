Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      namespace :reports do
        post 'create', :to => "reports#create"
      end
      namespace :schools do
        get '/', :to => "schools#index"
      end
      namespace :users do
        get '/', :to => "users#index"
      end
    end
  end

end
