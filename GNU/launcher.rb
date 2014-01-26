require_relative 'wc'

# see https://github.com/Fragan/bash/blob/master/ipsum_pruner.sh fot huge ipsum generator

start = Time.now
	puts WC.wc("lorem_ipsum.txt", 'l')
finish = Time.now

puts "#{(finish - start)} seconds."