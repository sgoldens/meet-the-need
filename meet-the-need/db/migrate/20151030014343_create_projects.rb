class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.integer :cost
      t.boolean :is_completed
      t.datetime :completed_date
      t.datetime :assigned_date

      t.references :customer
      t.string :developer_id, default: nil

      t.timestamps null: false
    end
  end
end


