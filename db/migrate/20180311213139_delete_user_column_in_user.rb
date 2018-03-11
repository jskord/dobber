class DeleteUserColumnInUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :dogs, :user, :string
  end
end
