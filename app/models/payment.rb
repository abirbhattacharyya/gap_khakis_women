class Payment < ActiveRecord::Base
  belongs_to :offer
  belongs_to :promotion_code

  validates_format_of :email, :if => :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  def new_expiry_date
    @dates = ["2011-05-29", (self.created_at + 3.days), (self.created_at + 1.day)]
    num = rand(10)
    return @dates[((num < 8) ? 0 : (num == 8) ? 1 : 2)]
  end
end
