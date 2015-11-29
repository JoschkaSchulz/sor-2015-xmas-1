class ChangeGeschenkt < ActiveRecord::Migration
  def change
    change_column :wunsches, :geschenkt, :text
  end
end
