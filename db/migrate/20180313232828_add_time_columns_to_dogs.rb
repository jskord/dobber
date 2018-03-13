class AddTimeColumnsToDogs < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :last_feeding, :datetime
    add_column :dogs, :last_walk, :datetime
    add_column :dogs, :last_treat, :datetime
  end
end
