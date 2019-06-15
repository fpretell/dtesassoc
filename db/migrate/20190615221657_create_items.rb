class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :ammount
      t.string :description
      t.string :iva

      t.timestamps
    end
  end
end
