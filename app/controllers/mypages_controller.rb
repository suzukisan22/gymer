class MypagesController < ApplicationController
  before_action :set_mypage, only: [:show]
  def show
  end

  private
  def set_mypage
    @mypage = User.find(params[:id])
  end
end
