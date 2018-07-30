class RecordsController < ApplicationController
  layout "mypage"

  def new
    @record = Record.new
  end

  def create
  end
end
