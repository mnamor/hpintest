class CreateComents < ActiveRecord::Migration[5.1]
  def change
    create_table :coments do |t|
      t.text :body
      t.integer :user_in
      t.integer :uin_id
      t.references :Pin, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
