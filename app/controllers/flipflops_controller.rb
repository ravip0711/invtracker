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

  def remove_all
    flipflops = Flipflop.all
      flipflops.each do |flipflop|
        flipflop.destroy
      end
    redirect_to flipflops_path, notice: "Flip Flops Cleared."
  end

end
