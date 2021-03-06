class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices, :id => false do |t|
	  t.string :uuid, :limit => 36, :primary => true
      t.integer :question_id,	null: false
      t.integer :choice_id,		null: false
      t.string :content,		null: false
      t.string :update_name
      t.date :update_date

      t.timestamps
    end
	
	add_index	:choices,	[ :question_id, :choice_id ],	unique: true
  end
end
