require 'sinatra' 
require 'open-uri' 

get '/*' do
  url =  (params[:splat] && ENV[params[:splat].first.upcase]) ? ENV[params[:splat].first.upcase] : ENV['REDIRECT_URL']
  if URI(url).host == 'www.dropbox.com'
    open(url).read.force_encoding('utf-8')
  else
    redirect url
  end
end
