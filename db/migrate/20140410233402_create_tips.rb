class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.text :news_tip
      t.date :date
      t.string :source
      t.string :reporter_following_up
      t.text :notes
      t.string :status

      t.timestamps
    end
  end
end
