# lib/application.rb

require 'sinatra'
require "omniauth-singly"

use OmniAuth::Builder do
	provider :singly, ENV['21ff03d9e1e42e28c5c53e94c8c36208'], ENV['942d969f6a6963afb85a7aa68b21bedd']
end

get "/" do
	erb :index
end

get "/auth/singly/callback" do
	redirect "/"
end