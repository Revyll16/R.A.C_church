class CreateSermons < ActiveRecord::Migration[7.1]
  def change
    create_table :sermons do |t|
      t.string :title
      t.date :date
      t.string :video_url

      t.timestamps
    end
  end
end
