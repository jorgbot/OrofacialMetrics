Rails.application.routes.draw do

  root 'paginas#inicio'

  devise_for :usuarios,
             path: '',
             path_names: {sign_in: 'ingresar', sign_out: 'salir', edit: 'perfil', sign_up: 'registrar'},
             controllers: {registrations: 'registrations'}

end
