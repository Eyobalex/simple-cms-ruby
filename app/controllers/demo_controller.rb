class DemoController < ApplicationController


  layout false

  def index
    render('index')
  end

  def hello
    @array = [1,2,3,4,5]
    render('hello')
  end
  
end
