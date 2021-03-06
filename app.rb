require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number]
    @phrase*@number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @op= params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i

    if @op == "add"
      result = @n1 + @n2
    elsif @op == "subtract"
      result = @n1 - @n2
    elsif @op == "multiply"
      result = @n1 * @n2
    else result = @n1 / @n2
    end

    "#{result}"
  end


end
