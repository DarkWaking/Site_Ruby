class BooksController < ApplicationController
  def index
    @mes_livres = Book.all
  end
  def create
    Book.create title: params[:title]
    redirect_to "/books"
  end
  def show
    @book = Book.find(params[:id])
  end
end
