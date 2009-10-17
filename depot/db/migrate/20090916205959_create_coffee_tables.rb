class CreateCoffeeTables < ActiveRecord::Migration
  def self.up
    create_table :coffee_tables do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :size

      t.timestamps
    end
  end

  def self.down
    drop_table :coffee_tables
  end
end
