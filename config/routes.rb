Rails.application.routes.draw do

  root 'paginas#inicio'

  devise_for :usuarios

end
