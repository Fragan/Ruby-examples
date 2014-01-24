
class WC
  class << self
    
    # Stupid implementation of GNU wc
    # 
    # file: path + filename
    #
    # options (as String):
    # => l: lines counter
    # => w: words counter
    # => m: bytes counter
    def wc(file, options = '')

      opt_lines = opt_words = opt_bytes = false

      # output all values if no option is given
      if options.empty?
        opt_lines = true
        opt_words = true
        opt_bytes = true
      else
        parsed_options = options.split(//)
        for o in parsed_options
          case o
          when 'l'
            opt_lines = true
          when 'w'
            opt_words = true
          when 'm'
            opt_bytes = true
          end
        end
      end

      lines = bytes = words = 0

      File.open(file, 'rb') do |f|
        f.each_line do |l|
          if opt_lines
            lines += 1
          end
          if opt_words
            words += l.split(/\s/).length
          end
          if opt_bytes
            bytes += l.length
          end
        end
      end
      return {:lines=>lines, :words=>words, :bytes=>bytes}
    end
  end
end