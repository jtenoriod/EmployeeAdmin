class CuadrillasController < ApplicationController

  before_action :authenticate_user!

  def index
    @obra = Obra.find(params[:obra_id])
    @cuadrilla = @obra.cuadrillas
  end

  def new
    @obra = Obra.find(params[:obra_id])
    @cuadrilla = @obra.cuadrillas.build
  end

  def show
    #@cuadrilla = @obra.cuadrillas
    @cuadrilla = Cuadrilla.find(params[:id])
  end

  def edit
    @obra = Obra.find(params[:obra_id])
    @cuadrilla = Cuadrilla.find(params[:id])
  end

  def create
    @obra = Obra.find(params[:obra_id])
    @cuadrilla = @obra.cuadrillas.build(cuadrilla_params)
    #@cuadrilla = Cuadrilla.new(cuadrilla_params)

    if @cuadrilla.save
      redirect_to obra_cuadrillas_path(@obra, @cuadrilla)
    else
      render 'new'
    end
  end

  def update
    @obra = Obra.find(params[:obra_id])
    @cuadrilla = Cuadrilla.find(params[:id])

    if @cuadrilla.update(cuadrilla_params)
      redirect_to obra_cuadrillas_path(@obra, @cuadrilla)
    else
      render 'edit'
    end
  end

  def destroy
    @obra = Obra.find(params[:obra_id])
    @cuadrilla = Cuadrilla.find(params[:id])
    @cuadrilla.destroy
    redirect_to obra_cuadrillas_path(@obra,@cuadrilla)
  end

  def change

  end

  private
  def cuadrilla_params
    params.require(:cuadrilla).permit(:nombreCuadrilla, :fechaInicio, :fechaTermino, :comentarios, :estado, :obra_id)
  end

end