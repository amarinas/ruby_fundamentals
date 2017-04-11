class NinjasControllerController < ApplicationController
  def index
    if !session[:gold]
      session[:gold] = 0
      session[:activity] =[]
    end
    @gold = session[:gold]
    @activity = session[:activity]
    @time = Time.new
  end

  def farm
    amount = rand(10..20)
    session[:gold] += amount
    time = Time.new
    obj = {won: true, sentence: "you won #{amount} from farm #{time}" }
    session[:activity].push(obj)
    redirect_to '/'
  end

  def cave
    amount = rand(5..10)
    session[:gold] += amount
    time = Time.new
    obj = {won: true, sentence: "you won #{amount} from cave #{time}" }
    session[:activity].push(obj)
    redirect_to '/'
  end

  def house
    amount = rand(2..5)
    session[:gold] += amount
    time = Time.new
    obj = {won: true, sentence: "you won #{amount} from house #{time}" }
    session[:activity].push(obj)
    redirect_to '/'
  end

  def casino
    amount = rand(0..50)
    gamble = rand(1..2)
    time =Time.new

    if gamble == 1
      session[:gold] += amount
      obj = {won: true, sentence: "you won #{amount} from casino #{time}" }
      session[:activity].push(obj)

    else
      session[:gold] -= amount
      obj = {won: false, sentence: "you lost #{amount} from casino #{time}" }
      session[:activity].push(obj)
    end
    redirect_to '/'
  end
end
