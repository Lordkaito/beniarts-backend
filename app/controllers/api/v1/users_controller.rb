class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    @admins = []
    @users.each do |user|
      user.is_admin? ? @admins << user : nil
    end
    render json: @users
  end

end
