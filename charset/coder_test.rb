require 'coder'

str_utf8 = File.open('../data-sample/utf-8.txt', 'rb').read()
puts str_utf8


str_iso88591 = File.open('../data-sample/iso-8859-1.txt', 'rb').read()
puts str_iso88591

clean_string = Coder.clean!(str_iso88591) # It remove the unrecognized chars
puts clean_string