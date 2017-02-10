require 'sinatra'
require 'geolocater'
require 'SendGrid'


set :nav_buttons, [ {title: "Contact", route: '/contact'}, {title: "Portfolio", route: '/portfolio'}, {title: "About", route: '/about'}, {title: "Home", route: '/'}]


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

