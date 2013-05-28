require_relative 'photo'

class Item
  attr_reader :name
  attr_accessor :sale
  attr_accessor :url
  attr_accessor :price
  attr_accessor :photos

  def initialize(attrs={})
    @name = attrs[:name]
    @sale = attrs[:sale] ? attrs[:sale] : false
    @url = attrs[:url] ? attrs[:url] : nil 
    @price = attrs[:price] ? attrs[:price] : nil 
    @photos = attrs[:photos] ? attrs[:photos] : []
  end

  def remove_photo(url)
    if url == nil
    else
      @photos.each do |item|
        if item.url == url
          @photos.delete(item)
        end
      end
    end
  end

end