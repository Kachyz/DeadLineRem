class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :owner
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
