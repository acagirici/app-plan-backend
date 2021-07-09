Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :college_applications do 
        resources :plans
      end
    end
  end

end
