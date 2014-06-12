class Car
  DEPRECIATION = 0.05

  attr_reader :make, :model, :year, :msrp
  attr_accessor :value, :markup, :price

  def initialize(make, model, year, msrp, markup)

    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @markup = markup
    @value = value
    @markup = markup
    @price = price

  end

  def value
    @msrp * (1-DEPRECIATION)**(Time.now.year - @year)
  end

  def price
    value * (1+@markup)
  end

end
