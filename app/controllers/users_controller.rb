class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:top]
  def show
    @user = User.find(params[:id])
    @book = Book.new


  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @books = Book.all
    @book = Book.new
    @user = current_user

  end

  private

  def user_params
     params.require(:user).permit(:name,:profile_image)
  end
end
