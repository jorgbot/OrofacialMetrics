json.extract! seguimiento, :id, :n_tecnica, :n_procedimiento, :n_frecuencia_aplicacion, :img_frontal, :img_lateral, :evolucion_foto, :resultado, :usuario_id, :paciente_id, :created_at, :updated_at
json.url seguimiento_url(seguimiento, format: :json)
