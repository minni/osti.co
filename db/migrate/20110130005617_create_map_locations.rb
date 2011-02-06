class CreateMapLocations < ActiveRecord::Migration

  def self.up
    create_table :map_locations do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :url
      t.decimal :lat, :precision => 9, :scale => 6, :default => 0.0
      t.decimal :lng, :precision => 9, :scale => 6, :default => 0.0
      t.timestamps
    end

    add_index :map_locations, :id
    load(Rails.root.join('db', 'seeds', 'refinerycms_map.rb').to_s)
  end

  def self.down
    UserPlugin.destroy_all({:name => "refinerycms_map"})

    Page.delete_all({:link_url => "/map"})

    drop_table :map_locations
  end

end
