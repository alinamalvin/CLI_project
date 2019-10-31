class Apartments::Rentals
attr_accessor :name, :price, :fee, :url

def self.today 
  #I should return all apartments avaialble for rent 
  self.scrape_rentals
end 

def self.scrape_rentals
  rentals=[]
  
  rentals << self.scrape_onebedroom
  rentals << self.scrape_twobedroom
 
 rentals
 end 
 
   rental_1 = self.new 
    rental_1.name = "32 WEST 86TH STREET, #41"
    rental_1.price = "$3092"
    rental_1.fee = true 
    rental_1.url="https://www.rentinmanhattan.net/upper-west-side/apartment-for-rent/32-west-86th-street-41/1339"

    
    rental_2 = self.new 
    rental_2.name = "Two bedroom in UES"
    rental_2.price = "$2799"
    rental_2.fee = false
    rental_2.url="https://www.rentinmanhattan.net/south-harlem-soha/apartment-for-rent/230-west-113th-street-garden-b/1302"
  
    def self.scrape_onebedroom
    doc = Nokogiri::HTML(open("https://www.rentinmanhattan.net/upper-west-side/apartment-for-rent/32-west-86th-street-41/1339"))
    rental = self.new 
    rental.name = doc.search("h1.property-address-header").text.strip
    rental.price = doc.search("h2.property-price-header").text.strip 
    rental.fee = "FEE"
    url = "https://www.rentinmanhattan.net/upper-west-side/apartment-for-rent/32-west-86th-street-41/1339"
    rental 
  end 
  
  def self.scrape_twobedroom
    doc = Nokogiri::HTML(open("https://www.rentinmanhattan.net/south-harlem-soha/apartment-for-rent/230-west-113th-street-garden-b/1302"))
    rental = self.new
    rental.name = doc.search("h1.property-address-header").text.strip
    rental.price = doc.search("h2.property-price-header").text.strip 
    rental.fee = "NO FEE"
    url = "https://www.rentinmanhattan.net/south-harlem-soha/apartment-for-rent/230-west-113th-street-garden-b/130"
    rental 
  end 
end
