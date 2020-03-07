class BookslistsController < ApplicationController
  def new
  	  @list = List.new
  end

  def create
  	  list = List.new(list_params)
      if list.save
        flash[:notice] = 'Book was successfully created.'
  	    redirect_to bookslist_path(list.id)
      end
  end

  def index
  	  @lists = List.all
      @list = List.new
  end

  def show
  	  @list = List.find(params[:id])
  end

  def edit
  	  @list = List.find(params[:id])
  end

  def update
  	  list = List.find(params[:id])
  	  list.update(list_params)
  	  redirect_to bookslist_path(list.id), notice: 'Book was successfully updated.'
  end

  def destroy
  	  list = List.find(params[:id])
  	  list.destroy
  	  redirect_to bookslists_path
  end

  private

  def list_params
  	params.require(:list).permit(:title, :body)
  end
end
