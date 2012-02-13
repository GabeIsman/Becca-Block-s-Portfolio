class CreateArt < ActiveRecord::Migration
  def change
    create_table :art do |t|

      t.timestamps
    end
  end
end
