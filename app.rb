require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @reverse_name = params[:name].reverse
    "#{@reverse_name}" 
  end

  get '/square/:number' do 
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do 
    answer = ''
    params[:number].to_i.times do 
      answer += params[:phrase]
    end
    answer 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    word_join = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ") + "."
    word_join
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
  case @operation 
    when 'add'
      @sum = params[:number1].to_i + params[:number2].to_i
      "#{@sum}"
    when 'subtract'
      @subtract = params[:number1].to_i - params[:number2].to_i
      "#{@subtract}"
    when 'multiply'
      @product = params[:number1].to_i * params[:number2].to_i
      "#{@product}"
    when 'divide'
      @divide = params[:number1].to_i / params[:number2].to_i
      "#{@divide}"
    end
  end

end