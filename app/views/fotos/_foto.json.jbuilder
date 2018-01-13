json.extract! foto, :id, :f_subida, :foto_titulo, :img_frontal, :img_lateral, :usuario_id, :paciente_id, :created_at, :updated_at
json.url foto_url(foto, format: :json)
