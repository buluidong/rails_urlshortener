class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url
      t.string :bitly
      t.integer :count

      t.timestamps
    end
  end
end
