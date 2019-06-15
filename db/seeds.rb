
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


#items

#buscar company
company=Company.where(rut: '111.111-6').first

#buscar invoices
invoice1 = company.invoices.where(folio: '1').first
invoice2 = company.invoices.where(folio: '2').first
invoice3 = company.invoices.where(folio: '3').first

#insertar items
invoice1.items.create :ammount => '100', :description => 'Service', :iva => '19'

invoice2.items.create :ammount => '100', :description => 'Service', :iva => '19'
invoice2.items.create :ammount => '100', :description => 'Product A', :iva => '19'
invoice2.items.create :ammount => '200', :description => 'Product B', :iva => '38'

invoice3.items.create :ammount => '3000', :description => 'Product D', :iva => '570'
invoice3.items.create :ammount => '1000', :description => 'Product E', :iva => '190'



#buscar company
company=Company.where(rut: '222.222-1').first

#buscar invoices
invoice1 = company.invoices.where(folio: '1').first
invoice2 = company.invoices.where(folio: '2').first
invoice3 = company.invoices.where(folio: '3').first

#insertar items
invoice1.items.create :ammount => '1000', :description => 'Service A', :iva => '190'
invoice1.items.create :ammount => '100', :description => 'Service B', :iva => '19'

invoice2.items.create :ammount => '1500', :description => 'Product C', :iva => '285'

invoice3.items.create :ammount => '3000', :description => 'Product D', :iva => '570'
invoice3.items.create :ammount => '1000', :description => 'Product E', :iva => '285'
