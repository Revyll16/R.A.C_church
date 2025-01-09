class AddMessageToDonations < ActiveRecord::Migration[7.1]
  def change
    add_column :donations, :message, :text
  end
end
