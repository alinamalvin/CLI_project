class Apartments::CLI 
  
  def call
    list_apartments
    menu
    goodbye
  end 
  
  def list_apartments
    puts "Current Apartments:"
    puts <<-DOC.gsub /^\s*/, ''
     1. Studio in Manhattan - $3000
     2. Studio in Brooklyn - $2000
     DOC
  end 
  
  def menu
    input = nil 
    while input !="exit"
    puts "Enter the neighbourhood you are looking for or type list to see apartments again or type exit to enter:"
    input = gets.strip
       case input
       when "Manhattan"
        puts "More apartments in Manhattan..."
       when "Brooklyn"
        puts "More apartments in Brooklyn..."
        when "list"
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