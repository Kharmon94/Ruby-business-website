require 'sinatra'
require 'geolocater'
require 'rainbow'

set :nav_buttons, [{title: "Home", route: '/'}, {title: "About", route: '/about'}, {title: "Portfolio", route: '/portfolio'}, {title: "Contact", route: '/contact'}]


get '/' do

	erb :index

end

get '/about' do

	erb :about

end

get '/portfolio' do

	erb :portfolio
	# erb :index
end

get '/contact' do
	erb :contact
	# erb :index
end

