class apartments::CLI 
  
  def call
    list_apartments
    menu
  end 
  
  def list_apartments
    puts "Current Apartments:"
    puts
    " 1. Studio in Manhattan - $3000
      2. Studio in Brooklyn - $2000"
  end 
  
  def menu
    puts "Enter the number of bedrooms you are looking for:"
  end
end 