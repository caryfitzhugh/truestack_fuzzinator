class CreateDummies < ActiveRecord::Migration
  def up
    create_table :dummies do |t|

      t.timestamps
    end
  end

  def down
    drop_table :dummies
  end
end
