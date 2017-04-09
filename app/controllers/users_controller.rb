class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  def show
    render json: @user
  end

  def create
    # creates or updates a record, temporary hack
    #todo: create new action for this to be more clear

    success = create_or_update_user

    if success && success == 'updated'
      render json: @user, status: :ok, location: @user
    elsif success && success == 'created'
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end

  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      #todo: make params required
      params.require(:user).permit(:user_id, :name, :family_name, :given_name, :email, :picture, :picture_large)
    end

    def create_or_update_user
      user_id = params[:user_id]

      if User.find_by(user_id: params[:user_id])
        @user = User.find_by(user_id: params[:user_id])
        @user.update(user_params) ? 'updated' : false
      else
        @user = User.new(user_params)
        @user.save ? 'created' : false
      end
    end

end
