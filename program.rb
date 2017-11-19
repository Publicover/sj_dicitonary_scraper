require 'rubygems'
require 'httparty'
require 'nokogiri'
require 'mechanize'
require './scraper'

# puts Scraper::LETTERS
Scraper::LETTERS.each do |letter|
  noko_page = HTTParty.get("#{Scraper::BASE_URL}/?page_id=50&whichLetter=#{letter}")
  parse_page = Nokogiri::HTML(noko_page)
  agent = Mechanize.new
  mech_page = agent.get("#{Scraper::BASE_URL}/?page_id=50&whichLetter=#{letter}")
  definitions = Hash.new('Not found')

  links = Scraper.collect_link_names
end

puts links
