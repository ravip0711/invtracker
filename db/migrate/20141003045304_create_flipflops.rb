class CreateFlipflops < ActiveRecord::Migration
  def change
    create_table :flipflops do |t|
      t.date :last_rcvd_date
      t.string :dcs
      t.string :vc
      t.string :desc1
      t.string :desc2
      t.string :attr
      t.integer :size
      t.integer :oh_qty
      t.integer :oh_ext_cost
      t.integer :oh_ext_retail
      t.integer :sold_qty
      t.integer :sold_ext_cost
      t.integer :sold_mgr
      t.integer :weeks_of_supply
      t.integer :report_sell_thru

      t.timestamps
    end
  end
end
