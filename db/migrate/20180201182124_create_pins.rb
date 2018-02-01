class CreatePins < ActiveRecord::Migration[5.1]
  def change
    create_table :pins do |t|
      t.string :Url
      t.integer :user_id
      t.references :user_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
