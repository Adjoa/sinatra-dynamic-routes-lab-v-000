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
    @phrase = params[:phrase]

    (1..@number.to_i).collect do |i|
      "#{@phrase}\n"
    end
  end

  get '/say/:word1/:word2/:word3/:word4' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    "#{@word1} #{@word1} #{@word1} #{@word1}."
  end

  get '/:operation/:number1/:number2' do

  end

end
