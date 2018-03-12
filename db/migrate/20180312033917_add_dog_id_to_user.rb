class AddDogIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :dog_id, :integer
  end
end
