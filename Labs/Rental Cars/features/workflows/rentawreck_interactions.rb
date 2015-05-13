module RentawreckInteractions

  def search_results
    [RentalCarResult.new, RentalCarResult.new]
  end
end

class RentalCarResult
  attr_accessor :rental_class, :price, :features
end

World(RentawreckInteractions)