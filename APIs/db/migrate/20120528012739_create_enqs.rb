class CreateEnqs < ActiveRecord::Migration
  def self.up
    create_table :enqs do |t|
      t.integer :enq_id,	:null => false
      t.string :title
      t.string :description
      t.string :css
      t.string :movie
      t.string :update_name
      t.date :update_date

      t.timestamps
    end
	
	  add_index :enqs, :enq_id, :unique => true
  end

  def self.down
    drop_table :enqs
  end
end
