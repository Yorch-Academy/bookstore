class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new book_params

    if @book.save
      respond_to do |format|
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:book).permit(:name, :price)
  end
end
