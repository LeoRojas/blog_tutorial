class WelcomeController < ApplicationController
  def index
    # do something and then render the view
    @name = "Leonardo"
  end

  def sum
    sum1 = 999
    sum2 = 1
    @res = sum1 + sum2
    @date
  end
end
