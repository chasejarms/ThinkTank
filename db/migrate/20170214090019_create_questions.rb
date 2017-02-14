class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question, null: false
      t.integer :prize_money, null: false
      t.timestamps null: false
    end
  end
end
