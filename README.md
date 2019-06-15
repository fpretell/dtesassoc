# fpretell/dtesassoc

## Descripción

Esta es una aplicación que proporciona datos de DTEs emitidos por empresa, usando Asociaciones o Relaciones (belongs_to, has_many)


## Requerimientos

Este proyecto actualmente trabaja con :

* Ruby 2.6.3
* Rails 5.2.3
* Sqlite3


## Instalación

  1. Clonar el proyecto
      ```
      git clone https://github.com/fpretell/dtesassoc.git
      ```
  2. Instalar Gemfile
      ```
      bundle install
      ```
  3. Crear databases (create y migrate)
      ```
      rake db:create
      rake db:migrate
      ```
  4. Insertar datos iniciales en database (seed)
      ```
      rake db:seed
      ```
  5. Iniciar Server Rails
      ```
      rails server
      ```
  6. Abrir en navegador:
      ```
      http://localhost:3000/companies
      ```

## End-points

  * ```GET /companies```

    Permite visualizar el listado de Empresas


  * ```GET /dtes/:rut```

    Permite visualizar los DTEs de la empresa con rut ":rut" ordenados por fecha descendente.
