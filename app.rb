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
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + (' ') + params[:word2] + (' ') + params[:word3] + (' ') + params[:word4] + (' ') + params[:word5] + ('.')
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @addanswer = params[:num1].to_i + params[:num2].to_i
    	@addanswer.to_s
    when "subtract"
      @subtractanswer = params[:num2].to_i - params[:num1].to_i
      @subtractanswer.to_s
    when "multiply"
      @multiplyanswer = params[:num1].to_i * params[:num2].to_i
      @multiplyanswer.to_s
    when "divide"
      @divideanswer = params[:num1].to_i / params[:num2].to_i
      @divideanswer.to_s
    end
  end

end
