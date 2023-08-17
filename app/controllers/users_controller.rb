class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @book = Book.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @books = Book.all
    @book = Book.new
    @user = User.find(params[:id])
  end

  private

  def user_params
     params.require(:user).permit(:name,:profile_image)
  end
end
