class CreateWunsches < ActiveRecord::Migration
  def change
    create_table :wunsches do |t|
      t.String :name
      t.Integer :anzahl
      t.Boolean :geschenkt
      t.Float :preis
      t.String :link
      t.String :beschreibung
      t.Integer :u_id

      t.timestamps null: false
    end
  end
end
