module RentawreckInteractions

  def goto_rentawreck_home
    visit RentawreckHome
  end

  def search_results
    #TODO made up data
    result1=RentalCarResult.new
    result1.rental_class='luxury'

    result2=RentalCarResult.new
    result2.rental_class='luxury'

    result3=RentalCarResult.new
    result3.price=$375

    result4=RentalCarResult.new
    result4.price=$300
    [result1, result2, result3, result4]
  end

  def new_reservation
    on(RentawreckHome) do |page|
      page.new_rental
    end
  end

  def new_search
    on(RentawreckRentals) do |page|
      page.search_available
    end
  end

  def enter_single_search_criteria
    criteria1='rental_class'
    criteria1_value='luxury'
    #TODO randomize this
    on(RentawreckRentals) do |page|
      page.send("#{criteria1}=", criteria1_value)
    end
    [criteria1, criteria1_value]
  end

  def sort_cars
    on(RentawreckRentals) do |page|
      page.sort_by_price
    end
  end


  class RentalCarResult
    attr_accessor :rental_class, :price, :features
  end

end
  World(RentawreckInteractions)