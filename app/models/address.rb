class Address < ActiveRecord::Base
  belongs_to :person

  def address_attributes=(address)
    self.address = Address.find_or_create_by(
      street_address_1: address[:street_address_1], 
      street_address_2: addrress[:street_address_2],
      city: address[:city],
      state: address[:state],
      zipcode: address[:zipcode])
    self.address.update(address)
  end
end
