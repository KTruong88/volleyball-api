class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :company_id
      t.string :phone_number
      t.integer :team_id

      t.timestamps
    end
  end
end
