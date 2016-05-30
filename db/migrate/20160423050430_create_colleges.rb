class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :students
      t.string :principal
      t.string :staff
      t.string :administration

      t.timestamps null: false
    end
  end
end
