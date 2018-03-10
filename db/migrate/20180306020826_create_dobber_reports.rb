class CreateDobberReports < ActiveRecord::Migration[5.1]
  def change
    create_table :dobber_reports do |t|
      t.integer :total_feedings
      t.integer :total_walks
      t.integer :total_treats

      t.timestamps
    end
  end
end
