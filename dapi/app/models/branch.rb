class Branch < ActiveRecord::Base
  include Extensions::UUID
  
  attr_accessible :answer, :enq_id, :next_page_id, :num, :update_date, :update_name

end
