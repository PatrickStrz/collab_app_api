class CommentsController < ApplicationController
  before_action :find_commentable, only: [:create, :update, :destroy]


  # POST /comments
  def create
    # @comment = Comment.new(comment_params)
    @comment = @commentable.comments.new(comment_params)

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  # def update
  #   if @comment.update(comment_params)
  #     render json: @comment
  #   else
  #     render json: @comment.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /comments/1
  # def destroy
  #   @commentable.comments.find(params[])
  #   @comment.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_commentable
      # debugger
      @commentable = Idea.find_by_id(params[:idea_id]) if params[:idea_id]
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:body, :commentable_id, :commentable_type)
    end
end
