class CommentsController < ApplicationController
  before_action :find_commentable, only: [:create]
  before_action :set_comment, only: [:show, :update, :destroy]

  def show
    render json: @comment
  end

  def create
    @comment = @commentable.comments.new(comment_params)

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
  end

  private
    def find_commentable
      @commentable = Idea.find_by_id(params[:idea_id]) if params[:idea_id]
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    end

    def set_comment
        @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:body, :commentable_id, :commentable_type)
    end
end
