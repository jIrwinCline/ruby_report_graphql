class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      # t.belongs_to :report, null: true, foreign_key: true
      t.string :time, null: true
      t.text :text, null: false
      t.string :image, null: true
      t.boolean :default

      t.timestamps
    end
  end
end
