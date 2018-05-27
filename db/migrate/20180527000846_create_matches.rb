class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.string :location
      t.date :date
      t.integer :home_score
      t.integer :away_score
      t.string :home
      t.string :away

      t.timestamps
    end
  end
end
