class CreateAdvideos < ActiveRecord::Migration
  def change
    create_table :advideos do |t|
      t.string :video_url
      t.timestamps null: false
    end
  end
end
