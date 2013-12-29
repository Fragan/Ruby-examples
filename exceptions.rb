
class Exceptions
  
  def warn()
    Kernel.warn("This is a warning")
  end
  
  # selective raise
  def raise_1(mess)
    begin
      fail "#{mess}"
    rescue => error
      raise if error.message != "Oops"
    end
  end
  
end



if __FILE__ == $0
  e = Exceptions.new()
  
  puts "0: #{e.warn()}"
  
  puts "1: #{e.raise_1("Oops")}"
  puts "2: #{e.raise_1("Oops_WRONG")} ---"
  
  
#  0: 
#  This is a warning
#  1: 
#  /extra/workspace-rails/Ruby-examples/exceptions.rb:11:in `raise_1': Oops_WRONG (RuntimeError)
#    from /extra/workspace-rails/Ruby-examples/exceptions.rb:27:in `<main>'
end