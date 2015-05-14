require 'page-object'

class RentawreckRentals
  include PageObject

  button(:search_available, :id=> 'launch_search_for_available_rentals')
  select(:rental_class, :id=> 'select_rental_car_type')

  def sort_by_price
    #TODO figure out how this works
  end
  def rentals
    #TODO define rental results method
  end
end