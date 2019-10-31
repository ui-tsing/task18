class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :priority, default: 1, nill: false
      t.integer :status, default: 1, nill: false
      t.datetime :begin_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
