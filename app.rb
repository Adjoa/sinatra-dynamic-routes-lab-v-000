require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    "#{@number.to_i.to_s}"
    @phrase = params[:phrase]
    #
    # @number.times do
    #   "Hello"
      "#{@phrase}"
    # end
  end

  get '/say/:word1/:word2/:word3/:word4' do

  end

  get '/:operation/:number1/:number2' do

  end

end
