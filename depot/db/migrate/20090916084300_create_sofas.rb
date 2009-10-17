class CreateSofas < ActiveRecord::Migration
  def self.up
    create_table :sofas do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :size

      t.timestamps
    end
  end

  def self.down
    drop_table :sofas
  end
end
