class AddTypeToTips < ActiveRecord::Migration
  def change
    add_column :tips, :type, :string
  end
end
