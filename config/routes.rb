Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :links do 
    member do 
      put "Like", to: "links#upvote"
      put "Dislike", to: "links#downvote"
    end 
    resources :comments
  end

  root "links#index"
end
