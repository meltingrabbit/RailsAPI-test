Rails.application.routes.draw do
  resources :friends do
    member do
      post 'setMyId'
    end

    collection do
      post 'searchMyId'
    end
  end

  # resources :friends, :only => [:index, :create]
  # resources :friends, :only => [:index, :create] do
  #   post 'setMyId',     :on => :member
  #   post 'searchMyId',  :on => :collection
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


	resources :ctrl01
end
