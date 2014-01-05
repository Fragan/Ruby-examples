#!/bin/env ruby
# encoding: utf-8

#
#
# Tested with Ruby 1.9.1 - 1.9.3 - 2.0.0 - 2.1.0
#
#


# Must specify line 'encoding: utf-8'
require_relative 'rchardet/lib/rchardet'

str = "\xc3\xa8 Ceci est une chaîne de caractères.".force_encoding(Encoding::BINARY)
  
cd = CharDet.detect(str)
  
encoding = cd['encoding']
confidence = cd['confidence']
  
puts "Encoding: #{encoding}"
puts "Confidence[0..1]: #{confidence}"

puts str


##########################
puts "##########################"

str = "\u{208}".force_encoding(Encoding::BINARY)
cd = CharDet.detect(str)
  
encoding = cd['encoding']
confidence = cd['confidence']
  
puts "Encoding: #{encoding}"
puts "Confidence[0..1]: #{confidence}"

puts str

puts "\n\n"

##########################

path = '../data-sample/'
Dir.foreach(path) do |item|
  next if item == '.' or item == '..' or item == 'countrylist.csv'
  puts "##########################"
  
  str = File.open(path+item, 'rb').read().force_encoding(Encoding::BINARY)
  cd = CharDet.detect(str)

  encoding = cd['encoding']
  confidence = cd['confidence']
  
  puts "File: #{item}"
  puts "Encoding: #{encoding}"
  puts "Confidence[0..1]: #{confidence}"

  
  puts str.force_encoding(encoding)
  
end


