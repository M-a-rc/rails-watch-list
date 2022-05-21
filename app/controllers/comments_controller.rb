class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params_comment)
    @list = List.find(params[:list_id])
    @comment.list = @list
    @comment.save
    redirect_to list_path(@list)
  end

  private

  def params_comment
    params.require(:comment).permit(:content)
  end
end
