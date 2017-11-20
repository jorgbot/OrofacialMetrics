class ConsentimientosController < ApplicationController
  before_action :set_consentimiento, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:index, :show]

  # GET /consentimientos
  # GET /consentimientos.json
  def index
    @consentimientos = Consentimiento.all.order("created_at desc")
  end

  # GET /consentimientos/1
  # GET /consentimientos/1.json
  def show
  end

  # GET /consentimientos/new
  def new
    @consentimiento = Consentimiento.new
  end

  # GET /consentimientos/1/edit
  def edit
  end

  # POST /consentimientos
  # POST /consentimientos.json
  def create
    @consentimiento = current_usuario.consentimientos.new(consentimiento_params)

    respond_to do |format|
      if @consentimiento.save
        format.html { redirect_to @consentimiento, notice: 'Consentimiento fue creado con éxito.' }
        format.json { render :show, status: :created, location: @consentimiento }
      else
        format.html { render :new }
        format.json { render json: @consentimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consentimientos/1
  # PATCH/PUT /consentimientos/1.json
  def update
    respond_to do |format|
      if @consentimiento.update(consentimiento_params)
        format.html { redirect_to @consentimiento, notice: 'Consentimiento fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @consentimiento }
      else
        format.html { render :edit }
        format.json { render json: @consentimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consentimientos/1
  # DELETE /consentimientos/1.json
  def destroy
    @consentimiento.destroy
    respond_to do |format|
      format.html { redirect_to consentimientos_url, notice: 'Consentimiento fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private

    def set_consentimiento
      @consentimiento = Consentimiento.find(params[:id])
    end

    def consentimiento_params
      params.require(:consentimiento).permit(:nombre, :apellido, :f_nacimiento, :c_menor, :tipo_documento, :documento, :na_representante, :r_tipo_documento, :r_documento, :direccion, :v_contenido, :c_tipo1, :c_tipo2, :c_tipo3, :c_tipo4, :c_tipo, :fecha, :correo, :telefono, :na_clinico, :correo_clinico, :usuario_id)
    end
end
