Rails.application.routes.draw do
  devise_for :admins,
             only: [:sessions],
             path: 'admin',
             path_names: { sign_in: 'login', sign_out: 'logout' },
             controllers: { sessions: 'devise/sessions' }
  get '/admins/logout' => 'devise/sessions#destroy'
  resources :lists, except: [:destroy]
  resources :schools, except: [:destroy]
  resources :rootboxs, except: [:destroy]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get '/top' => 'homes#top'

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
   root "homes#top"
end
