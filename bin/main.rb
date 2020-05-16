#!/usr/bin/env ruby
require 'colorize'

require_relative '../lib/movie_scraper.rb'

puts
puts '*** Welcome to Phillip\'s Movie Scraping Tool ***'
puts
puts "Choose between TV Shows (series)) or Movies by entering '1' or '2' to proceed: "
puts '1.'+' Movies'.red
puts '2.'+' TV Shows (series)'.red
choice = gets.chomp.to_i
puts
until choice == 1 || choice == 2
	puts "Invalid Entry!, Enter 1 or 2: "
	choice = gets.chomp.to_i
end

if choice == 1
	puts "Do you wish to search by: "
	puts '1.'+' Index(A-Z)'.red
	puts '2.'+' Year'.red
	puts '3.'+' Title'.red
	pick = gets.chomp.to_i
	until pick == 1 || pick == 2 || pick == 3
		puts "Invalid Entry!, Enter 1, 2 or 3: "
		pick = gets.chomp.to_i
	end
	if pick == 1
		puts "Enter a Letter: (A to Z)"
		idx = gets.chomp.downcase
		page(idx).each.with_index {|ele, idx| puts "#{idx + 1}. #{ele.red}"}
	elsif pick == 2
		puts "Enter a Year: "
		year = gets.chomp.to_i
		movies_by_year(year).each.with_index {|ele,idx| puts "#{idx+1}. #{ele.red}"}
	elsif pick == 3
		puts "Enter a Title: "
		title = gets.chomp
		 movies_by_title(title).each.with_index do |ele, idx|
			if ele == "Movie Not Found!"
				puts "Movie Not Found!"
			else
				puts "#{idx + 1}. #{ele.red}"
			end
		end
	end
elsif choice == 2
	puts "Do you wish to get: "
	puts '1.'+' Newest releases'.red
	puts '2.'+' All series'.red
	puts '3.'+' Search by title'.red
	pick = gets.chomp.to_i
	until pick == 1 || pick == 2 || pick == 3
		puts "Invalid Entry!, Enter 1, 2 or 3: "
		pick = gets.chomp.to_i
	end
end




# movies_by_year(2020).each.with_index {|ele,idx| puts "#{idx+1}. #{ele.red}"}

# page('a').each.with_index {|ele, idx| puts "#{idx + 1}. #{ele.red}"}

# movies_by_title('z').each.with_index do |ele, idx|
# 	if ele == "Movie Not Found!"
# 		puts "Movie Not Found!"
# 	else
# 		puts "#{idx + 1}. #{ele.red}"
# 	end
# end

