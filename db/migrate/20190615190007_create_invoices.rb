class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :date
      t.string :receiver_rut
      t.string :typed
      t.string :folio

      t.timestamps
    end
  end
end
