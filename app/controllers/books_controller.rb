class BooksController < ApplicationController
  def new

    @book = current_user.book.build
  end

  def index
  end

  def show
  end

  def edit
  end

  def create
  end

  def book_params
    params.require(:book).permit(:image)  end

end
