require 'sinatra' 

get '/*' do
  redirect ENV['REDIRECT_URL']
end
