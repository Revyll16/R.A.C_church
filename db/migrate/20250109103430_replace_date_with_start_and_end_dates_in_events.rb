class ReplaceDateWithStartAndEndDatesInEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :date, :datetime
    add_column :events, :start_date, :datetime
    add_column :events, :end_date, :datetime
  end
end
