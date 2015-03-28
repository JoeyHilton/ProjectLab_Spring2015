class AddDefaultValueToPriority < ActiveRecord::Migration
  def up
  change_column :tasks, :priority, :integer, :default => 3
  end

  def down
    change_column :tasks, :priority, :integer, :default => nil
  end
end
