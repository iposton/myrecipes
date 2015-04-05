Rails.application.routes.draw do

root 'pages#home'

get '/home', to: 'pages#home'

resources :recipes do
	member do
		post 'like'
	end
end

resources :chefs, except: [:new]

get '/register', to: 'chefs#new'

# login -> new session
# logout -> close session
# post login -> create session

get '/login', to: "logins#new"
post '/login', to: "logins#create"
get '/logout', to: "logins#destroy"

end
