class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :company_name, null: false
      t.string :phone_number, null: false
      t.string :project_description, null: false

      t.timestamps null: false
    end
  end
end
