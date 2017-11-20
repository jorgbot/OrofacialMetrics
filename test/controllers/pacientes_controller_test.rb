require 'test_helper'

class PacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_url
    assert_response :success
  end

  test "should create paciente" do
    assert_difference('Paciente.count') do
      post pacientes_url, params: { paciente: { apellido: @paciente.apellido, aseguradora: @paciente.aseguradora, celular: @paciente.celular, correo: @paciente.correo, documento: @paciente.documento, e_ciudad: @paciente.e_ciudad, e_departamento: @paciente.e_departamento, edad: @paciente.edad, estado: @paciente.estado, etnia: @paciente.etnia, f_nacimiento: @paciente.f_nacimiento, genero: @paciente.genero, n_ciudad: @paciente.n_ciudad, n_departamento: @paciente.n_departamento, nombre: @paciente.nombre, pais_estancia: @paciente.pais_estancia, pais_nacimiento: @paciente.pais_nacimiento, pais_residencia: @paciente.pais_residencia, r_ciudad: @paciente.r_ciudad, r_departamento: @paciente.r_departamento, r_direccion: @paciente.r_direccion, raza: @paciente.raza, religion: @paciente.religion, telefono: @paciente.telefono, tipo_documento: @paciente.tipo_documento, usuario_id: @paciente.usuario_id } }
    end

    assert_redirected_to paciente_url(Paciente.last)
  end

  test "should show paciente" do
    get paciente_url(@paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_url(@paciente)
    assert_response :success
  end

  test "should update paciente" do
    patch paciente_url(@paciente), params: { paciente: { apellido: @paciente.apellido, aseguradora: @paciente.aseguradora, celular: @paciente.celular, correo: @paciente.correo, documento: @paciente.documento, e_ciudad: @paciente.e_ciudad, e_departamento: @paciente.e_departamento, edad: @paciente.edad, estado: @paciente.estado, etnia: @paciente.etnia, f_nacimiento: @paciente.f_nacimiento, genero: @paciente.genero, n_ciudad: @paciente.n_ciudad, n_departamento: @paciente.n_departamento, nombre: @paciente.nombre, pais_estancia: @paciente.pais_estancia, pais_nacimiento: @paciente.pais_nacimiento, pais_residencia: @paciente.pais_residencia, r_ciudad: @paciente.r_ciudad, r_departamento: @paciente.r_departamento, r_direccion: @paciente.r_direccion, raza: @paciente.raza, religion: @paciente.religion, telefono: @paciente.telefono, tipo_documento: @paciente.tipo_documento, usuario_id: @paciente.usuario_id } }
    assert_redirected_to paciente_url(@paciente)
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete paciente_url(@paciente)
    end

    assert_redirected_to pacientes_url
  end
end
