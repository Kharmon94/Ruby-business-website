require 'sinatra'
# require 'geolocater'
# require 'rainbow'

set :nav_buttons, [ {title: "Contact", route: '/contact'}, {title: "Portfolio", route: '/portfolio'}, {title: "About", route: '/about'}, {title: "Home", route: '/'}]


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

