class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :body, null: false
      t.integer :question_id, null: false
      t.integer :user_id, null: false
    end
    add_index :solutions, :question_id
    add_index :solutions, :user_id
  end
end
