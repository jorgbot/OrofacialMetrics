require 'test_helper'

class CampodiagnosticosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campodiagnostico = campodiagnosticos(:one)
  end

  test "should get index" do
    get campodiagnosticos_url
    assert_response :success
  end

  test "should get new" do
    get new_campodiagnostico_url
    assert_response :success
  end

  test "should create campodiagnostico" do
    assert_difference('Campodiagnostico.count') do
      post campodiagnosticos_url, params: { campodiagnostico: { fotodiagnostico_id: @campodiagnostico.fotodiagnostico_id, nombre: @campodiagnostico.nombre, tipo_grupo: @campodiagnostico.tipo_grupo, usuario_id: @campodiagnostico.usuario_id, valor: @campodiagnostico.valor } }
    end

    assert_redirected_to campodiagnostico_url(Campodiagnostico.last)
  end

  test "should show campodiagnostico" do
    get campodiagnostico_url(@campodiagnostico)
    assert_response :success
  end

  test "should get edit" do
    get edit_campodiagnostico_url(@campodiagnostico)
    assert_response :success
  end

  test "should update campodiagnostico" do
    patch campodiagnostico_url(@campodiagnostico), params: { campodiagnostico: { fotodiagnostico_id: @campodiagnostico.fotodiagnostico_id, nombre: @campodiagnostico.nombre, tipo_grupo: @campodiagnostico.tipo_grupo, usuario_id: @campodiagnostico.usuario_id, valor: @campodiagnostico.valor } }
    assert_redirected_to campodiagnostico_url(@campodiagnostico)
  end

  test "should destroy campodiagnostico" do
    assert_difference('Campodiagnostico.count', -1) do
      delete campodiagnostico_url(@campodiagnostico)
    end

    assert_redirected_to campodiagnosticos_url
  end
end
