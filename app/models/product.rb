class Product < ActiveRecord::Base
  acts_as_suggest
  
  belongs_to :user
  has_many :offers

  validates_uniqueness_of :style_description, :scope => [:user_id, :color_description]

  def new_price_points
    price_codes = []
    for price_code in PromotionCode::PRICE_CODES
      price_codes << price_code if(price_code >= self.target_price and price_code < self.ticketed_retail)
    end
#    if price_codes.empty?
#      index = PromotionCode::PRICE_CODES.index{|x| x > self.ticketed_retail}
#      index = index.nil? ? (PromotionCode::PRICE_CODES.size - 1 ) :  (index - 1)
#      price_codes << PromotionCode::PRICE_CODES[index]
#    end
    return price_codes
  end

  def min_price_points
    price_codes = PromotionCode::PRICE_CODES
    price_codes.delete_if {|code| ((code >= self.target_price) or (code < PromotionCode::LOWEST_PRICES[self.ticketed_retail.to_s])) }
#    for price_code in PromotionCode::PRICE_CODES
#      price_codes << price_code if price_code < self.target_price
#    end
    return price_codes
  end

  def color
    self.color_description.gsub(/\d+/, '').strip
  end

  def target_price
    (self.selling_price)
  end

  def min_price
    (self.ticketed_retail.to_f * 0.3).ceil
  end

  def images
    @files = Dir.glob("#{Rails.root}/public/products/#{self.id}_*.*")
    image_names = []
    for file in @files
       image_names << file.gsub("#{Rails.root}/public", "")#[1..-1]
    end
    return image_names.sort! { |image1,image2| image1 <=> image2  }
  end

  def description
    ["missing","missing"]
  end
end
