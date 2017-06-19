class ConvertsController < ApplicationController

  def new
    @convert = Convert.new
  end

  def create
    @convert = Convert.new(convert_params)
    respond_to do |format|
      format.js
    end
  end

  private

    def convert_params
      params.require(:convert).permit(:text)
    end

end