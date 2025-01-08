class AddLeaderNameToMinistries < ActiveRecord::Migration[7.1]
  def change
    add_column :ministries, :leader_name, :string
  end
end
