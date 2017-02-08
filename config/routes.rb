Rails.application.routes.draw do
  	devise_for :users
 	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 	resources :events do
  		resources :messages, :controller => "event_messages"
  	end

 	get "events" => "events#index"
    root to: 'events#index'

    # match ':controller(/:action(/:id(.:format)))', :via => :all

end
