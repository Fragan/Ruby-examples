#!/bin/ruby

class CSVCropperParser

	START_TOKEN = "BoDy"

	def self.parse(file, columns_nb, line_nb, separator=";")
		# raise !file.exist

		File.open(file) do |f|
			# f.each_char do |c|
			# 	puts c
			# end
			cursor_positioning(f)
			get_cropped_csv(f, columns_nb, line_nb, separator)
		end
	end

	private

	def self.cursor_positioning(f)
		word = ""
		while word!=START_TOKEN && !f.eof?
			c = f.readchar
			if c=~/^[\s]/
				word = ""
			else
				word << c
			end
		end
		puts word << " detected"
	end

	def self.get_cropped_csv(f, columns_nb, line_nb, separator)
		line_counter = 0
		
		cropped_csv = ""

		# while empty lines
		while (c=f.readchar)=~/\s/ && !f.eof? ; end

		while line_counter<line_nb && !f.eof?
			cropped_csv = parse_line(f, columns_nb, separator)
			column_counter = 0
		end
	end

	def parse_line(f, columns_nb, separator)
		column_counter = 0

		while column_counter<columns_nb && c!=/\s/
				# TODO: insert the right code
				puts c
				c = f.readchar
		end
	end

end


if __FILE__ == $0
	CSVCropperParser.parse("./data-sample/countrylist.csv", 4, 4, ",")
end