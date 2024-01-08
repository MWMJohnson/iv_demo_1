class ChangeEmployeesInLeadershipToBoolean < ActiveRecord::Migration[7.0]
  def change
    change_column :employees, :in_leadership, 'boolean USING CAST(in_leadership AS boolean)'
  end
end
