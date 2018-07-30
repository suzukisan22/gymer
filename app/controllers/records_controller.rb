class RecordsController < ApplicationController
  layout "mypage"

  def new
    @record = Record.new
  end

  def create
    @records = current_user.records.build(record_params)
    if @records.save
      redirect_to mypage_path(current_user)
    else
      render :new
    end
  end

  private
  def record_params
    params.require(:record).permit(
      :number_of_times, :weight, :distance,
      place_attributes: [:name],
      training_menu_attributes: [:title]
    )
  end
end
