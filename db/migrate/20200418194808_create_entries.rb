class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      # t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :report, null: false, foreign_key: true
      t.string :time
      t.text :text
      t.string :image

      t.timestamps
    end
  end
end
