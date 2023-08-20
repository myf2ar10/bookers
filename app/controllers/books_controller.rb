class BooksController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def edit
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def destroy
  end

  def update
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
