class UsersController < ApplicationController
  def my_portfolio
    @tracked_stocks = current_user.stocks
    #current_user is from devise gem documentation
  end

  def my_friends
    @friends = current_user.friends
  end

  def show
    # code
  end

  def search
    if params[:friend].present?
      @friends = User.search(params[:friend])
      @friends = current_user.except_current_user(@friends)
      if @friends
        respond_to do |format|
          format.js { render partial: 'users/friend_result' }
        end
      else
        respond_to do |format|
          flash.now[:alert]= "Could not find user"
          format.js { render partial: 'users/friend_result' }
        end
      end
    else
      respond_to do |format|
        flash.now[:alert]= "Please enter a name or e-mail to search"
        format.js { render partial: 'users/friend_result' }
      end
    end
  end
end
