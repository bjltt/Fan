class CreateAutomotives < ActiveRecord::Migration
  def change
    create_table :automotives do |t|
      t.string :name
      t.string :address
      t.string :employment
      t.integer :telephone

      t.timestamps null: false
    end
  end
end
