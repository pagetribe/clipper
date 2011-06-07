class CreateClippings < ActiveRecord::Migration
  def self.up
    create_table :clippings do |t|
      t.string :title
      t.text :content
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :clippings
  end
end
