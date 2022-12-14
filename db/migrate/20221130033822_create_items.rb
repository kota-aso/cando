class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :subtitle
      t.integer :price, null: false
      t.date :date, null: false
      t.references :user, null: false,  foreign_key: true
      t.timestamps
    end
  end
end
