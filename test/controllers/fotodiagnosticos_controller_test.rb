require 'test_helper'

class FotodiagnosticosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fotodiagnostico = fotodiagnosticos(:one)
  end

  test "should get index" do
    get fotodiagnosticos_url
    assert_response :success
  end

  test "should get new" do
    get new_fotodiagnostico_url
    assert_response :success
  end

  test "should create fotodiagnostico" do
    assert_difference('Fotodiagnostico.count') do
      post fotodiagnosticos_url, params: { fotodiagnostico: { f_evaluacion: @fotodiagnostico.f_evaluacion, foto_id: @fotodiagnostico.foto_id, id_evaluacion: @fotodiagnostico.id_evaluacion, paciente_id: @fotodiagnostico.paciente_id, usuario_id: @fotodiagnostico.usuario_id } }
    end

    assert_redirected_to fotodiagnostico_url(Fotodiagnostico.last)
  end

  test "should show fotodiagnostico" do
    get fotodiagnostico_url(@fotodiagnostico)
    assert_response :success
  end

  test "should get edit" do
    get edit_fotodiagnostico_url(@fotodiagnostico)
    assert_response :success
  end

  test "should update fotodiagnostico" do
    patch fotodiagnostico_url(@fotodiagnostico), params: { fotodiagnostico: { f_evaluacion: @fotodiagnostico.f_evaluacion, foto_id: @fotodiagnostico.foto_id, id_evaluacion: @fotodiagnostico.id_evaluacion, paciente_id: @fotodiagnostico.paciente_id, usuario_id: @fotodiagnostico.usuario_id } }
    assert_redirected_to fotodiagnostico_url(@fotodiagnostico)
  end

  test "should destroy fotodiagnostico" do
    assert_difference('Fotodiagnostico.count', -1) do
      delete fotodiagnostico_url(@fotodiagnostico)
    end

    assert_redirected_to fotodiagnosticos_url
  end
end
