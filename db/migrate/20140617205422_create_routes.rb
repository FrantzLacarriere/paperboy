class CreateRoutes < ActiveRecord::Migration
  def up
    create_table :routes do |t|
      t.integer :paperboy_id
    end
  end

  def down
  end
end
