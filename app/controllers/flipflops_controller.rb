class FlipflopsController < ApplicationController

  def new
  end

  def import
    Flipflop.import(params[:file])
    redirect_to root_url, notice: "Flip Flops Imported."
  end

  def show
  end

end
