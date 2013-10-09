class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :address, :short_address
      t.integer :click_count

      t.timestamps
    end
  end
end
