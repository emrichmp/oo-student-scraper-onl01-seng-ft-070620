require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    data = Nokogiri::HTML(html)
    student = doc.css(".student-card a")
    array = student.collect do |i|
      {:name => element.css(".student-name").text , 
      :location => element.css(".student-location").text, 
      :profile_url => element.attr('href')
      }
    end
    array
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

