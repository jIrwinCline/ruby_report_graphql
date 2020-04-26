class AddReportToEntries < ActiveRecord::Migration[6.0]
  def change
    add_reference :entries, :report, null: false, foreign_key: true
  end
end
