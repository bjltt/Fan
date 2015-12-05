class CreateIts < ActiveRecord::Migration
  def change
    create_table :its do |t|
      t.string :name
      t.string :address
      t.string :employment
      t.integer :telephone

      t.timestamps null: false
    end
  end
end
