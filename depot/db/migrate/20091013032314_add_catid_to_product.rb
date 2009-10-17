class AddCatidToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :catid, :integer
  end

  def self.down
    remove_column :products, :catid
  end
end
