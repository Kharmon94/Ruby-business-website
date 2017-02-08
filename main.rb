require 'sinatra'
require 'geolocater'


set :nav_buttons, [{title: "Home", route: '/'}, {title: "About", route: '/about'}, {title: "Portfolio", route: '/portfolio'}, {title: "Contact", route: '/contact'}]


get '/' do
	@title = "Home"
	erb :index

end

get '/about' do
	@title = "About"
	erb :about

end

get '/portfolio' do
	@title = "Portfolio"
	erb :portfolio
	# erb :index
end

get '/contact' do
	@title = "Contact"
	erb :contact
	# erb :index
end

