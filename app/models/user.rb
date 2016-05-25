class User < ActiveRecord::Base
  has_many :purchases, foreign_key: :buyer_id
  has_many :toys, through: :purchases
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Cart methods
  def cart_count
    $redis.scard "cart#{id}"
  end

  def cart_total_price
    total_price = 0
    get_cart_toys.each { |toy| total_price += toy.price }
    total_price
  end

  def get_cart_toys
    cart_ids = $redis.smembers "cart#{id}"
    toy.find(cart_ids)
  end

  # Purchasing methods
  def purchase_cart_toys!
    get_cart_toys.each { |toy| purchase(toy) }
    $redis.del "cart#{id}"
  end

  def purchase?(toy)
    toys.include?(toy)
  end

  def purchase(toy)
    toys << toy unless purchase?(toy)
  end

end
