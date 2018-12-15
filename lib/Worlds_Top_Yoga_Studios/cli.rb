class WorldsTopYogaStudios::CLI
  
  def call
    puts "Here are 9 amazing yoga studios"
    list_studios
    menu
    goodbye
  end
  
  def list_studios
    @all_studios = WorldsTopYogaStudios::Studio.studios
    @all_studios.each.with_index(1) do |s, index|
      puts "#{index}. #{s.name} - #{s.location} - #{s.url}"
    end
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "Enter the number of which yoga studio you would like more information about or hit list to display the studios again:"
    input = gets.strip.downcase
    
    if input.to_i > 0
      the_studio = @all_studios[input.to_i - 1]
      puts "#{the_studio.name} - #{the_studio.location} - #{the_studio.url}"
      elsif input == "list"
      list_studios
    else 
      puts "Not sure what you meant... Please enter 1-9 or exit"
    end
  end
  
  def goodbye
    puts "See you later! As always, namaste."
  end
end
end