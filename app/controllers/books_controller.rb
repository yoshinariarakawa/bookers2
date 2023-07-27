class BooksController < ApplicationController
  def new

    @book = current_user.book.build
  end

  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def show
  end

  def edit
  end

  def create
  end

  def book_params
    params.require(:book).permit(:title, :opinion, :image)  end

end
