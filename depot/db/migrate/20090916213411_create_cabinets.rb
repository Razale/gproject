class CreateCabinets < ActiveRecord::Migration
  def self.up
    create_table :cabinets do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :size

      t.timestamps
    end
  end

  def self.down
    drop_table :cabinets
  end
end
