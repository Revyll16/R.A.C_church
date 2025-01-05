class CreatePrayerRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :prayer_requests do |t|
      t.string :name
      t.string :email
      t.text :message
      t.boolean :anonymous

      t.timestamps
    end
  end
end
