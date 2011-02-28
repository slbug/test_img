class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :uid, :null => false, :unique => true, :default => ''
      t.string :url, :null => false
      t.string :title, :null => false

      t.timestamps
    end
  end
end
