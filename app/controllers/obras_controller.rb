class ObrasController < ApplicationController
  def new
    @obra = Obra.new
  end

  def create
    @obra = Obra.new(obra_params)

    if @obra.save
      redirect_to @obra
    else
      render "new"
    end
  end

  def show
    @obra = Obra.find(params[:id])
  end

  def index
    @obra = Obra.all
  end

  private
    def obra_params
      params.require(:obra).permit(:nombre_obra)
    end
end
