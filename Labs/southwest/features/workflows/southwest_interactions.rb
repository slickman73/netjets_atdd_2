module SouthwestInteractions

  def goto_southwest_app
    visit SouthwestHome
  end

  def search_for_flights_between_valid_airports
    departure = 'CMH'
    arrival = 'MCO'
    on(SouthwestHome) do |page|
      page.departure_airport = departure
      page.arrival_airport = arrival
      page.search
    end
    [departure, arrival]
  end

  def search_results
    on(SouthwestSearchResults).flights
  end

  def search_results_departure_airport
    on(SouthwestSearchResults).departure_airport

  end

  def search_results_arrival_airport
    on(SouthwestSearchResults).arrival_airport

  end

  def search_for_flights_between_duplicate_airports
    departure = 'PHX'
    arrival = 'PHX'
    on(SouthwestHome) do |page|
      page.departure_airport = departure
      page.arrival_airport = arrival
    end
    [departure, arrival]
  end

  def search_error
   on(SouthwestHome).invalid_message
  end

end

World(SouthwestInteractions)