require 'sinatra' 

get '/*' do
  redirect params[:splat] && ENV[params[:splat].first.upcase] ? ENV[params[:splat].first.upcase] : ENV['REDIRECT_URL']
end
