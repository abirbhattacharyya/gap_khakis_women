class Product < ActiveRecord::Base
  acts_as_suggest
  
  belongs_to :user
  has_many :offers

  validates_uniqueness_of :style_description, :scope => [:user_id, :color_description]

  PRODUCT_ITEMS = {

    1 => "Casual and elegant, your special springtime friend!",
    2 => "Flowery and cool. Wear on your date by the pool!",
    3 => "Versatile and elegant.  Your work and after work friend",
    4 => "Your on the go pack it in and run companion!",
    5 => "Dress up or down, stay in or go out on the town?",
    6 => "Your dress and you will have fun as you hang out in the summer sun",
    7 => "You will look good as you stay cool by the pool!",
    8 => "You will look good as you stay cool by the pool!",
    9 => "You will feel light and breezy and buying is easy!",
    10 => "Your sexy, spring and summer accessory!",
    11 => "Open up the possibilities with this colorful accessory",
    12 => "Your favorite winter accessory springs to summer with color",
    13 => "Work or play, your skinny jean's BFF",
    14 => "Kick back and relax in this vintage tee",
    15 => "Goes with anything you want to wear"

  }


  def show_item
    return PRODUCT_ITEMS[self.id]
    #"dealkat will write cool copy of eggsactly 70 characters no more no les"
  end

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
