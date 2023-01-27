# So turns out that number isn't real anyway. Both 0 and 489 show null, meaning the 489 number of ingredients is wrong. 
  # Also, I found numbers up to 616

# TODO: implement scraper to grab total ingredients number from thecocktaildb.com to grab total ingredients number to take that into the randomizer. 
#will make random number from 0 to total ingredient number (currently 489 at time of looking.) 

require 'open-uri'

class Scraper 
  SCRAPE_URL = "https://www.thecocktaildb.com"

  def self.scrape_ingredient_quantity
    puts "checking ingredient database"
    doc = Nokogiri::HTML(URI.open(SCRAPE_URL))
    


  end


end

