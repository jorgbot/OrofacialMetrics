class CampodiagnosticosController < ApplicationController
  before_action :set_campodiagnostico, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:index, :show]

  # GET /campodiagnosticos
  # GET /campodiagnosticos.json
  def index
    @campodiagnosticos = Campodiagnostico.all
  end

  # GET /campodiagnosticos/1
  # GET /campodiagnosticos/1.json
  def show
  end

  # GET /campodiagnosticos/new
  def new
    @campodiagnostico = Campodiagnostico.new
  end

  # GET /campodiagnosticos/1/edit
  def edit
  end

  # POST /campodiagnosticos
  # POST /campodiagnosticos.json
  def create
    @campodiagnostico = current_usuario.campodiagnosticos.new(campodiagnostico_params)

    respond_to do |format|
      if @campodiagnostico.save
        format.html { redirect_to @campodiagnostico, notice: 'Campodiagnostico fue creado con éxito.' }
        format.json { render :show, status: :created, location: @campodiagnostico }
      else
        format.html { render :new }
        format.json { render json: @campodiagnostico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campodiagnosticos/1
  # PATCH/PUT /campodiagnosticos/1.json
  def update
    respond_to do |format|
      if @campodiagnostico.update(campodiagnostico_params)
        format.html { redirect_to @campodiagnostico, notice: 'Campodiagnostico fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @campodiagnostico }
      else
        format.html { render :edit }
        format.json { render json: @campodiagnostico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campodiagnosticos/1
  # DELETE /campodiagnosticos/1.json
  def destroy
    @campodiagnostico.destroy
    respond_to do |format|
      format.html { redirect_to campodiagnosticos_url, notice: 'Campodiagnostico fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campodiagnostico
      @campodiagnostico = Campodiagnostico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campodiagnostico_params
      params.require(:campodiagnostico).permit(:tipo_grupo, :nombre, :valor, :usuario_id, :fotodiagnostico_id)
    end
end
