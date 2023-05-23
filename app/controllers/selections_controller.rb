class SelectionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @persons = User.not_admin.order(:name).select(:id, :name, :position)
    @positions = Position.all.order(:name).select(:id, :name)
  end
end
