# Project name: ShelfAwareness
# # Description: Aims to improve/facilitate literacy through social media and donations of books
# # Filename: books_controller.rb
# # Description: Contrller for bookshelf module
# # Last modified on: 4/25/2019
# # License: This code was adpated from https://guides.rubyonrails.org/getting_started.html#the-first-form under the Creative Commons Attribution-ShareAlike 4.0 International License

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :genre, :quotes, :notes, :status)
    end
end
