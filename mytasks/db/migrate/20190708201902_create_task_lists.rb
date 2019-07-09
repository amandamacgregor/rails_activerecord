class CreateTaskLists < ActiveRecord::Migration[5.2]
  def change
    create_table :task_lists do |t|
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
