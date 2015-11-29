class CreateWunsches < ActiveRecord::Migration
  def change
    create_table :wunsches do |t|
      t.string :name
      t.integer :anzahl
      t.array :geschenkt
      t.float :preis
      t.string :link
      t.text :beschreibung
      t.integer :u_id

      t.timestamps null: false
    end
  end
end
