class AddForeignKeyToImage < ActiveRecord::Migration
  def change
    add_column :images, :design_id, :integer
  end
end
