class BooksController < ApplicationController
  before_action :authenticate_user!
  
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

  def update
    Book.find(params[:id]).update title: params[:title]
    redirect_to "/books/#{params[:id]}"
  end

  def destroy
    Book.find(params[:id]).destroy
    flash[:notice] = "Le livre a bien été supprimé"
    redirect_to "/books"
  end
end
