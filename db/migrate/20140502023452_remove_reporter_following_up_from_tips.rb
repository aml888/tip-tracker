class RemoveReporterFollowingUpFromTips < ActiveRecord::Migration
  def change
    remove_column :tips, :reporter_following_up, :string
  end
end
