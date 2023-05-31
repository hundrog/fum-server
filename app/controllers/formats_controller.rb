class FormatsController < ApplicationController
  before_action :set_format, only: %i[ show update destroy ]

  # GET /formats
  # GET /formats.json
  def index
    # filter_query = "CONCAT(TO_CHAR(EXTRACT(MONTH FROM creation_date), 'fm00'), '-',EXTRACT(YEAR FROM creation_date))"
    @formats = Format
      .select(select_query)
      .joins(join_query)
      .where("#{filter_query}", 
        params[:month] || Date.today.month,
        params[:year] || Date.today.year
      )
  end

  # GET /formats/1
  # GET /formats/1.json
  def show
  end

  # POST /formats
  # POST /formats.json
  def create
    @format = Format.new(format_params)

    if @format.save
      render :show, status: :created, location: @format
    else
      render json: @format.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formats/1
  # PATCH/PUT /formats/1.json
  def update
    if @format.update(format_params)
      render :show, status: :ok, location: @format
    else
      render json: @format.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formats/1
  # DELETE /formats/1.json
  def destroy
    @format.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_format
      @format = Format
        .select(select_query)
        .joins(join_query)
        .find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def format_params
      params.require(:format).permit(:reason, :status, :training, :job_posting, :justification, :employee_name, :employee_number, :creation_date, :termination_date, :current_position_id, :new_position_id, :current_boss_id, :vacant_boss_id, :vacant_coordinator_id, :notify)
    end

    def select_query
      'formats.id, formats.reason, formats.status, formats.training, formats.job_posting, ' \
      'formats.justification, formats.employee_name, formats.employee_number, formats.creation_date, ' \
      'formats.termination_date, formats.notify, formats.created_at, formats.updated_at, ' \
      'current_positions.name AS current_position_name, ' \
      'new_positions.name AS new_position_name, ' \
      'current_boss.name AS current_boss_name, ' \
      'vacant_boss.name AS vacant_boss_name, ' \
      'vacant_coordinator.name AS vacant_coordinator_name'
    end

    def join_query
      'JOIN positions AS current_positions ON current_positions.id = formats.current_position_id ' \
      'JOIN positions AS new_positions ON new_positions.id = formats.new_position_id ' \
      'JOIN users AS current_boss ON current_boss.id = formats.current_boss_id ' \
      'JOIN users AS vacant_boss ON vacant_boss.id = formats.vacant_boss_id ' \
      'JOIN users AS vacant_coordinator ON vacant_coordinator.id = formats.vacant_coordinator_id'
    end

    def filter_query
      'EXTRACT(MONTH FROM creation_date) = ? AND EXTRACT(YEAR FROM creation_date) = ?'
    end
end
