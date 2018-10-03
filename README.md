# OrofacialMetrics

ruby -v
ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-linux]

rails -v
Rails 5.0.6


# Instalacion 

## Paso 1

-  Clonar Proyecto

## Paso 2

-  Ejecutar comando `bundle install`

## Paso 3  ( si es la primera vez que instala si no saltar a paso 4 )

-  ( si es la primera vez que se instala) Ejecutar comando `gem install bundler` 

- volver a ejecutar `bundle install` saldra un mensaje
parecido a este `Bundle complete! 24 Gemfile dependencies, 91 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.` 

- En la raiz del proyecto ejecutar `cp config/database.yml.example config/database.yml` y ` cp config/secrets.yml.example config/secrets.yml`
modificar  `databese.yml` y `secrets.yml` con tu valores de configuracion.


## Paso 4

-  Ejecutar `rails s` visualizar el proyecto en tu navegador de preferencias  ruta `localhost:3000`
