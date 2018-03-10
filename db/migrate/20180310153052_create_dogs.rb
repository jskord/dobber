class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.integer :feedings
      t.integer :treats
      t.integer :walks
      t.integer :user

      t.timestamps
    end
  end
end
