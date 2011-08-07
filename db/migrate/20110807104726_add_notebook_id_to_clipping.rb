class AddNotebookIdToClipping < ActiveRecord::Migration
  def self.up
    add_column :clippings, :notebook_id, :integer
    add_index :clippings, :notebook_id
  end

  def self.down
    remove_column :clippings, :notebook_id
  end
end
