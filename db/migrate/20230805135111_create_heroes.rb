class CreateHeroes < ActiveRecord::Migration[7.0]
  def change
    create_table :heroes do |t|
      t.string :key
      t.string :name
      t.string :portrait
      t.string :role

      t.timestamps
    end
  end
end
