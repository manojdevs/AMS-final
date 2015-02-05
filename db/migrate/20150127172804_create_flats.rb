class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string	:flat_no, null: false
      t.integer :size, null: false
      t.float	:uds,null: false
      t.integer	:balcony
      t.float 	:gsize
      t.string	:cpark
      t.string	:penthouse
      t.integer	:nbed,null: false
      t.integer	:nbath,null: false
      t.integer	:nkitch,null: false
      t.integer	:nhall,null: false
      t.integer	:ndin,null: false
      t.integer	:npooja,null: false
      t.date 	:pur_date,null: false
      t.string	:first_owner
      t.string	:gn_rent
      t.integer	:f_mem,null: false
      t.float	:ws_tax,null: false
      t.float	:p_tax,null: false
      t.date 	:due_date,null: false
      t.timestamps
    end
  end
end
