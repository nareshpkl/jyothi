class CreateMyregistrations < ActiveRecord::Migration
  def change
    create_table :myregistrations do |t|
      t.string :name
      t.string :email
      t.string :cell
      t.string :gender
      t.string :category
      t.text :subject

      t.timestamps null: false
    end
  end
end
