class Add < ActiveRecord::Migration
  def change
    add_column :advideos, :hls_url, :string
  end
end
