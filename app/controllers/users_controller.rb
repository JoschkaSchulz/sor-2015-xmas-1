class UsersController < ApplicationController

  # GET /posts
  def index
    @venue = "We have many users."
    @users = User.all
  end

  # GET /posts/1
  def show
    @user = User.find(params[:id])
    @wunsches = Wunsch.where(u_id:@user)
    @prices_sum = @wunsches.inject(0){|sum, wunsch| sum + wunsch[:preis]}
  end

end
