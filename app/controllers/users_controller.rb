class UsersController < ApplicationController
  include Authorization
  before_action :set_user, only: [:show, :update]
  before_action :authenticate_user!

  # GET /users
  # GET /users.json
  def index
    @users = User.with_area_name.all
  end

  # GET /areas/1
  def show;end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      render :show, status: :ok, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user_id = params[:id].presence || current_user&.id
      @user = User.with_area_name.find(user_id)
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {})
    end
end
