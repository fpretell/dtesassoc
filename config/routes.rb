Rails.application.routes.draw do

  # get 'items' , to: 'items#index'

  get 'companies' , to: 'companies#index'

  get 'dtes/:rut' , to: 'invoices#index', constraints: { rut: /.+/ }

end
