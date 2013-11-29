class Tweet < ActiveRecord::Base
  attr_accessible :content, :handle, :time_posted

  def self.search(search)
    search_condition = '%' + search + '%'
    where('content LIKE ?', search_condition)
  end

end


