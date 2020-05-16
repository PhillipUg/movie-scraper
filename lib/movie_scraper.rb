# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'byebug'

Url1 = 'https://o2tvseries.com/search/list_all_tv_series'
Url2 = 'https://toxicwap.com/New_Movies/az/'

# MOVIES

def page(letter)
  puts "Loading Movies in category [#{letter}]...."
  page_url = Url2 + letter + '.php'
  html = Nokogiri::HTML(URI.open(page_url))
  html.css('li').map(&:text)
end

def all_movies
  arr = []
  ('a'..'z').each { |letter| arr << page(letter) unless letter == 'x' }
  arr.flatten
end

def movies_by_year(year)
  puts 'Fetching movies ....'
  puts ''
  movies = all_movies

  movies.keep_if do |title|
    sanitized = title.scan(/\d{4}/).join
    title if sanitized.to_i == year
  end
end

def movies_by_title(title)
  movies = all_movies

  results = []
  movies.each do |item|
    results << item if item.downcase.include?(title.downcase)
  end
  results.empty? ? ['Movie Not Found!'] : results.sort
end

# SERIES

def all_series
  puts
  puts 'Loading...'
  html = Nokogiri::HTML(URI.open(Url1))
  html.css('.data a').map(&:text).sort
end

def serie_by_title(title)
  puts
  puts "Loading series that match '#{title}'..."
  puts
  series = all_series

  results = []
  series.each do |item|
    results << item if item.downcase.include?(title.downcase)
  end
  results.empty? ? ['Movie Not Found!'] : results.sort
end

def latest
  puts
  puts 'Loading newest series...'
  puts '-------------------------'
  url = Url1[0...-18] + 'recently_added'
  html = Nokogiri::HTML(URI.open(url))
  html.css('.data').map { |title| title.text.gsub(/[\t\n]/, '').gsub('  ', ' ').gsub('Season', 'Sn.').gsub('Episode', 'Ep.').insert(-2, "/#{Time.now.year}") }
end
