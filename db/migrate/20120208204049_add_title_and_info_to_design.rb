class AddTitleAndInfoToDesign < ActiveRecord::Migration
  def change
    add_column :designs, :title, :string, :nil => false
    add_column :designs, :info, :text
  end
end
