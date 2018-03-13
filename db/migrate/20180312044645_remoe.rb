class Remoe < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :user_id, :integer
  end
end
