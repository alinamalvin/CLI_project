class Apartments::Rentals
attr_accessor :name, :price, :fee, :url 

def self.today 
  #I should return all apartments avaialble for rent 
  self.scrape_rentals
end 

def self.scrape_rentals
  rentals=[]
  
  # Go to woot, find apartments
  # extract the properties
  # instantiate a rental 
  
  # Go to meh.. 
   rental_1 = self.new 
    rental_1.name = "One bedroom in UWS"
    rental_1.price = "$2000"
    rental_1.fee = true 
    rental_1.url = "https://www.rentinmanhattan.net/upper-west-side/apartment-for-rent/32-west-86th-street-3b/1132"
    
    rental_2 = self.new 
    rental_2.name = "Two bedroom in UES"
    rental_2.price = "$3000"
    rental_2.fee = false
    rental_2.url = "https://www.rentinmanhattan.net/upper-east-side/apartment-for-rent/328-east-74th-street-1/1074"
    
    rentals
  end 
end 