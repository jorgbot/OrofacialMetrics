require 'test_helper'

class ConsentimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consentimiento = consentimientos(:one)
  end

  test "should get index" do
    get consentimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_consentimiento_url
    assert_response :success
  end

  test "should create consentimiento" do
    assert_difference('Consentimiento.count') do
      post consentimientos_url, params: { consentimiento: { apellido: @consentimiento.apellido, c_menor: @consentimiento.c_menor, c_tipo1: @consentimiento.c_tipo1, c_tipo2: @consentimiento.c_tipo2, c_tipo3: @consentimiento.c_tipo3, c_tipo4: @consentimiento.c_tipo4, c_tipo: @consentimiento.c_tipo, correo: @consentimiento.correo, correo_clinico: @consentimiento.correo_clinico, direccion: @consentimiento.direccion, documento: @consentimiento.documento, f_nacimiento: @consentimiento.f_nacimiento, fecha: @consentimiento.fecha, na_clinico: @consentimiento.na_clinico, na_representante: @consentimiento.na_representante, nombre: @consentimiento.nombre, r_documento: @consentimiento.r_documento, r_tipo_documento: @consentimiento.r_tipo_documento, telefono: @consentimiento.telefono, tipo_documento: @consentimiento.tipo_documento, usuario_id: @consentimiento.usuario_id, v_contenido: @consentimiento.v_contenido } }
    end

    assert_redirected_to consentimiento_url(Consentimiento.last)
  end

  test "should show consentimiento" do
    get consentimiento_url(@consentimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_consentimiento_url(@consentimiento)
    assert_response :success
  end

  test "should update consentimiento" do
    patch consentimiento_url(@consentimiento), params: { consentimiento: { apellido: @consentimiento.apellido, c_menor: @consentimiento.c_menor, c_tipo1: @consentimiento.c_tipo1, c_tipo2: @consentimiento.c_tipo2, c_tipo3: @consentimiento.c_tipo3, c_tipo4: @consentimiento.c_tipo4, c_tipo: @consentimiento.c_tipo, correo: @consentimiento.correo, correo_clinico: @consentimiento.correo_clinico, direccion: @consentimiento.direccion, documento: @consentimiento.documento, f_nacimiento: @consentimiento.f_nacimiento, fecha: @consentimiento.fecha, na_clinico: @consentimiento.na_clinico, na_representante: @consentimiento.na_representante, nombre: @consentimiento.nombre, r_documento: @consentimiento.r_documento, r_tipo_documento: @consentimiento.r_tipo_documento, telefono: @consentimiento.telefono, tipo_documento: @consentimiento.tipo_documento, usuario_id: @consentimiento.usuario_id, v_contenido: @consentimiento.v_contenido } }
    assert_redirected_to consentimiento_url(@consentimiento)
  end

  test "should destroy consentimiento" do
    assert_difference('Consentimiento.count', -1) do
      delete consentimiento_url(@consentimiento)
    end

    assert_redirected_to consentimientos_url
  end
end
