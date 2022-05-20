class ListsController < ApplicationController
  before_action :set_list, only: %i[show]

  def index
    @lists = List.all
  end

  def show
    @list_bookmarks = Bookmark.select { |bookmark| bookmark.list_id == @list.id }
    @list_movies = []
    @list_bookmarks.each { |bookmark| @list_movies << Movie.find(bookmark.movie_id) }
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
