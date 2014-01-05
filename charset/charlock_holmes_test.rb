#!/bin/env ruby
# encoding: utf-8

# https://github.com/brianmario/charlock_holmes
require 'charlock_holmes'
#require 'charlock_holmes/string'

# Need ICU c/c++ program installed on OS
# 34.65MB on GitHub


#
# Ubuntu installation
#   sudo apt-get install libicu-dev
#   sudo gem install charlock_holmes -- --with-icu-dir=/usr/local/lib/
#

# Tested with Ruby 1.9.1 - 1.9.3 - 2.0.0 - 2.1.0


str = "\xc3\xa8 Ceci est une chaîne de caractères.".force_encoding(Encoding::BINARY)
  
cd = CharlockHolmes::EncodingDetector.detect(str)

encoding = cd[:encoding]
confidence = cd[:confidence]
text = cd[:text]
  
puts "Encoding: #{encoding}"
puts "Confidence[0..100]: #{confidence}"
puts "Text: #{text}"


puts str


##########################
puts "##########################"

str = "\u{208}".force_encoding(Encoding::BINARY)
cd = CharlockHolmes::EncodingDetector.detect(str)
  
encoding = cd[:encoding]
confidence = cd[:confidence]
text = cd[:text]
  
puts "Encoding: #{encoding}"
puts "Confidence[0..100]: #{confidence}"
puts "Text: #{text}"

puts str

puts "\n\n"

##########################

path = '../data-sample/'
Dir.foreach(path) do |item|
  next if item == '.' or item == '..' or item == 'countrylist.csv'
  puts "##########################"
  
  str = File.open(path+item, 'rb').read().force_encoding(Encoding::BINARY)
  cd = CharlockHolmes::EncodingDetector.detect(str)

  encoding = cd[:encoding]
  confidence = cd[:confidence]
  text = cd[:text]
  
  puts "File: #{item}"
  puts "Encoding: #{encoding}"
  puts "Confidence[0..100]: #{confidence}"
  puts "Text: #{text}"

  
  puts str.force_encoding(encoding)
  
end
