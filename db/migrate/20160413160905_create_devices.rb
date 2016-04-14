class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :udid
      t.string :appId
      t.string :sdkKey
      t.string :authToken
      t.string :expireOn

      t.timestamps null: false
    end
  end
end
