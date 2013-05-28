class User

  attr_reader :name, :username, :email, :wishlists

  def initialize(attrs={})
    @name = attrs[:name]
    @username = attrs[:username]
    @email = attrs[:email]
    @wishlists = []
  end

  def add_wishlist(list)
    unless @wishlists.include?(list)
      @wishlists << list
    end
  end
  
end