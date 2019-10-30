class Apartments::Rentals
attr_accessor :name, :price, :fee, :url 

def self.today 
  #I should return all apartments avaialble for rent 
  self.scrape_rentals
end 

def self.scrape_rentals
  rentals=[]
  
  rentals << self.scrape_rentinmanhattan
  rentals << self.scrape_streeteasy
 
 rentals
 end 
 
   rental_1 = self.new 
    rental_1.name = "Studio in UWS"
    rental_1.price = "$2000"
    rental_1.fee = true 
    rental_1.url="http://rentinmanhattan.net/upper-east-side/apartment-for-rent/328-east-74th-street-1/1074"

    
    rental_2 = self.new 
    rental_2.name = "Two bedroom in UES"
    rental_2.price = "$3000"
    rental_2.fee = false
    rental_2.url="htps://streeteasy.com/building/32-west-86-street-new_york/41"
  
    def self.scrape_rentinmanhattan 
    doc = Nokogiri::HTML(open("https://www.rentinmanhattan.net/upper-east-side/apartment-for-rent/328-east-74th-street-1/1074"))
    rental = self.new 
    rental.name = doc.search("h1.property-address-header").text.strip
    rental.price = doc.search("h2.property-price-header").text.strip 
    rental.fee = true
    rental 
  end 
  
  def self.scrape_streeteasy
    doc = Nokogiri::HTML(open("https://streeteasy.com/building/32-west-86-street-new_york/41"))
    rental = self.new
    rental.name = doc.search("a.incognito").text
    rental.price = doc.search("div.price").text
    rental_fee=false 
    rental
end 

end
