# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# empresas
Company.create([
  { :name => "Company A", :rut => "111.111-6" },
  { :name => "Company B", :rut => "222.222-1" }
])



# dtes
Invoice.create([
	{ :company => Company.where( rut: "111.111-6").first, :date => "1559347200",  :receiver_rut => "222.222-1", :typed => "factura", :folio => "1" },
	{ :company => Company.where( rut: "111.111-6").first, :date => "1559433600", :receiver_rut => "222.222-1", :typed => "factura", :folio => "2" },
	{ :company => Company.where( rut: "222.222-1").first, :date => "1559433600", :receiver_rut => "111.111-6", :typed => "factura", :folio => "1" },
	{ :company => Company.where( rut: "222.222-1").first, :date => "1559437200", :receiver_rut => "111.111-6", :typed => "factura", :folio => "2" },
	{ :company => Company.where( rut: "222.222-1").first, :date => "1559477200", :receiver_rut => "111.111-6", :typed => "factura", :folio => "3" },
	{ :company => Company.where( rut: "111.111-6").first, :date => "1559487200", :receiver_rut => "222.222-1", :typed => "factura", :folio => "3" }
  
])

