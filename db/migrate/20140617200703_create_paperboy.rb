class CreatePaperboy < ActiveRecord::Migration
  def up
    create_table :paperboys do |t|
      t.string :name
      t.string :age
    end
  end

  def down
  end
end
