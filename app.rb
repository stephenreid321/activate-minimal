require 'sinatra' 

get '/*' do
  redirect params[:splat] && ENV[params[:splat].first] ? ENV[params[:splat].first] : ENV['REDIRECT_URL']
end
