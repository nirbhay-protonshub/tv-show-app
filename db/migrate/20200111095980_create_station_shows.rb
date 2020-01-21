class CreateStationShows < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :show_id
      t.integer :user_id
      t.string :user_status
      t.string :user_season
      t.timestamps
    end
  end
end
