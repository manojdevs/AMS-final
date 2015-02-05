class CreateApts < ActiveRecord::Migration
  def change
    create_table :apts do |t|
      t.string :apt_id,	null: false
      t.string :apt_name,	null: false	
      t.date   :start_date,	null: false
      t.date   :comp_date,	null: false
      t.string :apt_type,	null: false
      t.integer :no_of_blocks
      t.integer :no_of_villa
      t.string  :street
      t.integer :unit
      t.string  :postal_code,	null: false
      t.string  :city,	null: false
      t.string 	:state,	null: false
      t.string  :country,	null: false
      t.integer :patta_no,	null: false
      t.string  :regd_office,	null: false
      t.integer :total_sq_ft,	null: false
      t.string  :facing,	null: false
      t.integer :length_sq_ft,	null: false
      t.integer :breadth_sq_ft,	null: false
      t.float   :urban_tax,	null: false
      t.timestamps
      end
    end
  end
