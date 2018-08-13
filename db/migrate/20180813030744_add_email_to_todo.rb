class AddEmailToTodo < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :email, :string
  end
end
