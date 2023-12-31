class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])

  end

  def edit
    @book = Book.find(params[:id])

  end

  def create
    @book = Book.new(book_params)
    @book.save
    if @book.save
      flash[:notice] = "Book was successfully created."      # みてもらう
      redirect_to book_path(@book.id)
      # redirect_to @book
    else
      @books = Book.all
      render :index
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, status: :see_other
  end

  def update
  @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."      # みてもらう
      redirect_to book_path(@book.id)
    else
      flash[:notice] = "error."      # みてもらう
      render :show
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
