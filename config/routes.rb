Rails.application.routes.draw do
  resources :blogsapps do
   collection do
     post :confirm
    end
  end
end
