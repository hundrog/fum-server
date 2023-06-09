class AreasController < ApplicationController
  before_action :set_area, only: %i[ show update destroy ]
  # before_action :authenticate_user!
  # before_action :authenticate_admin!, only: %i[create update destroy]

  # GET /areas
  def index
    @areas = Area.all
    render json: @areas
  end

  # GET /areas/1
  def show
    render json: @area
  end

  # POST /areas
  def create
    @area = Area.new(area_params)

    if @area.save
      AreaMailer.with(area: @area, user: current_user).welcome_email.deliver_now
      render json: @area, status: :created, location: @area
    else
      render json: @area.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /areas/1
  def update
    if @area.update(area_params)
      render json: @area
    else
      render json: @area.errors, status: :unprocessable_entity
    end
  end

  # DELETE /areas/1
  def destroy
    @area.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def area_params
      params.require(:area).permit(:name)
    end
end
