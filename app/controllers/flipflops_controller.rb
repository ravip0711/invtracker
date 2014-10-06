class FlipflopsController < ApplicationController

  def index
    @flipflops = Flipflop.all
  end

  def new
  end

  def import
    Flipflop.import(params[:file])
    redirect_to flipflops_path, notice: "Flip Flops Imported."
  end

  def show
  end

end
