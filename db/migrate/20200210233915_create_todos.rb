class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text :description
      t.boolean :finished
      t.integer :weight
      t.string :category

      t.timestamps
    end
  end
end
