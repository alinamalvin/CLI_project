class Apartments::CLI 
  
  def call
    list_apartments
    menu
    goodbye
  end 
  
  def list_apartments
    puts "Current Apartments:"
    
     @rentals = Apartments::Rentals.today
  end 
  
  def menu
    input = nil 
    while input !="exit"
    puts "Enter the amount of bedroom you are looking for or type list to see apartments again or type exit to enter:"
    input = gets.strip
    
    if input.to_i > 0 
      puts @rentals[input.to_i-1]
    else if input == "list"
      list_apartments
    else 
       puts "No results found, type list or exit."
      end 
    end 
  end
  
  def goodbye 
   puts "Thank you for choosing our search engine!"
  end
end 