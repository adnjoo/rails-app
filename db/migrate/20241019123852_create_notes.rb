class CreateNotes < ActiveRecord::Migration[7.2]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.boolean :archived, default: false, null: false
      t.boolean :completed, default: false, null: false

      t.timestamps
    end
  end
end
