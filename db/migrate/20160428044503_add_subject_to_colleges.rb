class AddSubjectToColleges < ActiveRecord::Migration
  def change
    add_column :colleges, :subject, :text
  end
end
