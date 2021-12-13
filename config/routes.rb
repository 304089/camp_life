Rails.application.routes.draw do
  root "homes#top"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users, except:[:index, :destroy]
  resources :gears, except:[:destroy]
  resources :plans do
    collection do
      post :gear_choice
    end
  end
end
