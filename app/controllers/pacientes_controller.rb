class PacientesController < ApplicationController
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:index, :show]

  # GET /pacientes
  # GET /pacientes.json
  def index
    @pacientes = Paciente.all.order("created_at desc")
  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = current_usuario.pacientes.new(paciente_params)

    respond_to do |format|
      if @paciente.save
        format.html { redirect_to @paciente, notice: 'Paciente fue creado con éxito.' }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1
  # PATCH/PUT /pacientes/1.json
  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html { redirect_to @paciente, notice: 'Paciente fue actualizado con éxito.' }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: 'Paciente fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private

    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    def paciente_params
      params.require(:paciente).permit(:nombre, :apellido, :genero, :tipo_documento, :documento, :f_nacimiento, :edad, :pais_nacimiento, :n_departamento, :n_ciudad, :aseguradora, :raza, :etnia, :pais_residencia, :r_departamento, :r_ciudad, :r_direccion, :estado, :pais_estancia, :e_departamento, :e_ciudad, :religion, :celular, :telefono, :correo, :usuario_id)
    end
end
