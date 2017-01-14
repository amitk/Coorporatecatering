Rails.application.routes.draw do

=begin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/vendors/:id", to: "vendor#show"
  post "/vendors", to: "vendor#create"
  get "vendors/new", to: "vendor#new"
  get "vendors/:id/edit", to: "vendor#edit"
  put "vendors/:id", to: "vendor#update"
  delete "vendors/:id", to: "vendor#destroy"
=end

	resources :vendors do
		collection do
			get 'locations', on: :collection
			get 'search', on: :collection
		end
		get 'rating', on: :member
	end

end
