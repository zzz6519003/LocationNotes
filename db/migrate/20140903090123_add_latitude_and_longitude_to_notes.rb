class AddLatitudeAndLongitudeToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :latitude, :string
    add_column :notes, :longitude, :string
  end
end
