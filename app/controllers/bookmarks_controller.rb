class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)

    @bookmark.list_id = @list.id
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render 'lists/show', status: :unprocessable_entity
    end
  end

  def destroy
    # Supp un bookmark d'une list
    # afficher dans show de list
    raise
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
