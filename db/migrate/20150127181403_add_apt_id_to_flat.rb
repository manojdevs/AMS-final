class AddAptIdToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :apt_id, :integer
  end
end
