class AddSizeToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :size, :string
  end

  def self.down
    remove_column :products, :size
  end
end
