class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.text :cmt_text
      t.references :photo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
