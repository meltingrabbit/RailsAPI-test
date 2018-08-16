Rails.application.routes.draw do
  resources :friends
  resources :friends do
    member do
      post 'setMyId'
    end

    collection do
      post 'searchMyId'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


	resources :ctrl01
end
