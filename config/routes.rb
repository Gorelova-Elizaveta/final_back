# Rails.application.routes.draw do
#   # devise_for :users
#   resources :posts, only: [:index, :create, :destroy]
#   Rails.application.routes.draw do
#     devise_for :users,
#                controllers: {
#                    sessions: 'users/sessions',
#                    registrations: 'users/registrations'
#                }
#     get '/member-data', to: 'members#show'
#   end
  
# end
Rails.application.routes.draw do
  resources :posts, only: [:index, :create, :destroy]
  resources :users, only: [:show, :update]
  resources :members, only: [:show]
  devise_for :users,
          controllers: {
            sessions: 'users/sessions',
            registrations: 'users/registrations'
          }
end