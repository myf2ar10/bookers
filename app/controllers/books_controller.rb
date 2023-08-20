class BooksController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def edit
    @book = Book.find(params[:id])

  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def destroy
  end

  def update
  book = Book.find(params[:id])
  book.update(book_params)
  redirect_to book_path(book.id)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
