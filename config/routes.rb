Rails.application.routes.draw do
  scope '/api' do
    scope 'v1' do
      resources :comments, :users, :posts,  defaults: {format: :json}
    end
  end
  root to: "posts#index", defaults: {format: :json}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
