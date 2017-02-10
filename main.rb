require 'sinatra'
require 'geolocater'
require 'sendgrid-ruby'


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

post '/contact' do
	from = SendGrid::Email.new email: params[:email]
	to = SendGrid::Email.new email: "xcatlkd@gmail.com"
	subject = params[:subject]
	content = SendGrid::Content.new(
			type: 'plain/text',
			value: params[:comment]
		)
	mail = SendGrid::Mail.new(from, subject, to, content)
	sg = SendGrid::API.new( api_key: ENV['SENDGRID_API_KEY'])

	response = sg.client.mail_('send').post(request_body: mail.to_json)
	response.inspect
end

