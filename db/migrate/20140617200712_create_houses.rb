class CreateHouses < ActiveRecord::Migration
  def up
    create_table :houses do |t|
      t.string :address
      t.integer :route_id
    end
  end

  def down
  end
end
