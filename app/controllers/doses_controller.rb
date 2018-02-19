class DosesController < ApplicationController
  def show
  	@dose = Dose.find(params[:id])
  end

  def new
  	@dose = Dose.new
  end

  def create
  	@dose = Dose.new(dose_params)
  	"dose created" if @dose.save
  end

  private

  def dose_params
  	params.require(:dose).permit(:ingredient, :cocktail, :description)
  end
end
