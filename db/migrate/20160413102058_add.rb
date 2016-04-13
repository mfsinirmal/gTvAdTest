class Add < ActiveRecord::Migration
  def change
   update_table :advideos do |t|
      t.string hls_url
    end
  end
end
