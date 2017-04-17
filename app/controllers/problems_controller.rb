class ProblemsController < ApplicationController
  #authenticate from knock/auth0
  # before_action :authenticate, only: [:update, :destroy, :create]
  before_action :set_problem, only: [:show, :update, :destroy]

  def index
    problems = Problem.all

    render json: problems
  end
  def show
    render json: @problem
  end

  def create
    problem = Problem.new(problem_params)
    #change
    if problem.save
      render json: problem, status: :created, location: problem
    else
      render json: problem.errors, status: :unprocessable_entity
    end
  end

  def update
    if @problem.update(problem_params)
      render json: @problem
    else
      render json: @problem.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @problem.destroy
  end

  private
    def set_problem
      @problem = Problem.find(params[:id])
    end

    def problem_params
      params.require(:problem).permit(:auth0_id, :text, :title, :rank, :active, :user_id)
    end
end
