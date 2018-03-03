class CreateUserToTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_to_tasks do |t|
      t.references :user, foreign_key: true
    end
  end
end
