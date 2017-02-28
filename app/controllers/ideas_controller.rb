class IdeasController < ApplicationController
  before_action :authenticate, only: [:update, :destroy, :create]
  before_action :set_problem, only: [:show, :update, :destroy]
  before_action :set_problem_idea, only: [:show, :update, :destroy]

  def index
    @ideas = Problem.find(params[:problem_id]).ideas.all
    render json: @ideas
  end

  def show
    render json: @idea
  end

  def create
    @idea = Idea.new(idea_params)

    if @idea.save
      render json: @idea
    else
      render json: @idea.errors, status: :unprocessable_entity
    end
  end

  def update
    if @idea.update(idea_params)
      render json: @idea
    else
      render json: @idea.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @idea.destroy
  end

  private
    def set_problem
      @problem = Problem.find(params[:problem_id])
    end
    def set_problem_idea
      @idea = @problem.ideas.find(params[:id])
    end

    def idea_params
      return params.require(:idea).permit(:auth0_id, :text, :title, :rank, :active, :problem_id)
    end
end
