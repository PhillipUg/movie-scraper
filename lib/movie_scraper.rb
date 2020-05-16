require 'nokogiri'
require 'open-uri'
require 'colorize'

Url1 = "https://o2tvseries.com"
Url2 = "https://toxicwap.com/New_Movies/az/"




def page(letter)
		page_url = Url2 + letter + '.php'
		html = Nokogiri::HTML(URI.open(page_url))

		
		html.css('li').map {|title| title.text}
end

def all_movies
	arr= []
('a'..'z').each {|letter| arr << page(letter) unless letter == 'x'}
	arr.flatten
end

def movies_by_year(year)
	puts "Fetching movies ...."
	puts ""
	movies = all_movies
	counter = 1
	movies.each do |title|
		# sanitized = title.scan(/\d{4}/).join
		puts "#{counter}. #{title.blue}" #if sanitized.to_i == year
		counter += 1
	end
	nil
end

