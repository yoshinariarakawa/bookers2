class BooksController < ApplicationController
  def new

    @book = current_user.book.build
  end

  def index
    @books = Book.all
    @book = Book.new
    @user = User.find(current_user.id)
  end

  def show
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :opinion, :image)
  end

end
