require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @answer = params[:number].to_i * params[:number].to_i
    @answer.to_s
  end

  get '/say/:number/:phrase' do
    
  end

end
