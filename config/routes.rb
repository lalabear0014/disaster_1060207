Rails.application.routes.draw do
 	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 	resources :events

 	get "events" => "events#index"
    root 'events#index'

    # match ':controller(/:action(/:id(.:format)))', :via => :all

end
