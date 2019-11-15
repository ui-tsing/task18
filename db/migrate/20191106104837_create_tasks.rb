class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: true
      t.integer :priority, null: true, default: 1
      t.integer :status, null: true, default: 1
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
