class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks
    #current_user is from devise gem documentation
  end
end
