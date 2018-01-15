class FotodiagnosticosController < ApplicationController
  before_action :set_fotodiagnostico, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:index, :show]

  # GET /fotodiagnosticos
  # GET /fotodiagnosticos.json
  def index
    @fotodiagnosticos = Fotodiagnostico.all
  end

  # GET /fotodiagnosticos/1
  # GET /fotodiagnosticos/1.json
  def show
  end

  # GET /fotodiagnosticos/new
  def new
    @fotodiagnostico = Fotodiagnostico.new
  end

  # GET /fotodiagnosticos/1/edit
  def edit
  end

  # POST /fotodiagnosticos
  # POST /fotodiagnosticos.json
  def create
    @fotodiagnostico = current_usuario.fotodiagnosticos.new(fotodiagnostico_params)

    respond_to do |format|
      if @fotodiagnostico.save
        format.html { redirect_to @fotodiagnostico, notice: 'Fotodiagnostico fue creado con éxito.' }
        format.json { render :show, status: :created, location: @fotodiagnostico }
      else
        format.html { render :new }
        format.json { render json: @fotodiagnostico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotodiagnosticos/1
  # PATCH/PUT /fotodiagnosticos/1.json
  def update
    respond_to do |format|
      if @fotodiagnostico.update(fotodiagnostico_params)
        format.html { redirect_to @fotodiagnostico, notice: 'Fotodiagnostico fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @fotodiagnostico }
      else
        format.html { render :edit }
        format.json { render json: @fotodiagnostico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotodiagnosticos/1
  # DELETE /fotodiagnosticos/1.json
  def destroy
    @fotodiagnostico.destroy
    respond_to do |format|
      format.html { redirect_to fotodiagnosticos_url, notice: 'Fotodiagnostico fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotodiagnostico
      @fotodiagnostico = Fotodiagnostico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotodiagnostico_params
      params.require(:fotodiagnostico).permit(:f_evaluacion, :id_evaluacion, :usuario_id, :foto_id, :paciente_id)
    end
end
