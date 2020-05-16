require 'nokogiri'
require 'open-uri'


Url1 = "https://o2tvseries.com"
Url2 = "https://toxicwap.com/New_Movies/az/"




def page(letter)
		puts "Loading Movies in category [#{letter}]...."
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

	movies.keep_if do |title|
		sanitized = title.scan(/\d{4}/).join
		title if sanitized.to_i == year
	end
end

def movies_by_title(title)
	movies = all_movies

	results = []
	movies.each {|item| results << item if item.downcase.include?(title.downcase)}
	results.empty? ? ["Movie Not Found!"] : results 
end

# movies_by_year(2020)