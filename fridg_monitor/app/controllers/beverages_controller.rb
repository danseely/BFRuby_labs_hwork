class BeveragesController < ApplicationController

  def index
    # b = Beer.new('Miller', 5.5)
    # render text: "Not a fan of #{b.name}"

    b = Beer.new('Bud', 4.2)
    w = Wine.new('Pinot', 16.3, 'red')
    @fridg = Refrigerator.new(drinks: [b, w])

    # render text: "Not a fan of #{b.name}"

  end

end