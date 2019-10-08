class BooksController < ApplicationController
  def index
    @mes_livres = Book.all
  end
  def create
    Book.create title: params[:title]
    flash[:notice] = "Le livre a bien été ajouté"
    redirect_to "/books"
  end
  def show
    @book = Book.find(params[:id])
  end
end
