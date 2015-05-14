require 'page-object'

class RentawreckHome
  include PageObject

  page_url ('rentawreck.edu')

  button(:new_rental, :id=>'start_new_rental_reservation')

end