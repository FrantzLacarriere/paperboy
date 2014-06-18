class CreateDeliveries < ActiveRecord::Migration
  def up
    create_table :deliveries do |t|
      t.integer :house_id
      t.integer :paperboy_id
      t.date :date
    end
  end

  def down
  end
end
