Rails.application.routes.draw do
  root "sessions#top"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users, except:[:index, :destroy]
  resources :gears, except:[:destroy]
  resources :plans do
    member do
      get :schedule_edit
      post :gear_edit
    end
    collection do
      post :gear_choice
    end
  end
end
