class AddHasAttchedFileToImages < ActiveRecord::Migration
  def change
    change_table :images do |t|
      t.has_attached_file :image
    end
  end
end
