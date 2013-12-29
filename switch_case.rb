
class SwitchCase
  class << self
    
    def switch_test_1(v1, v2)
      case [v1, v2]
        when [1, 5] then puts "1 & 5"
        when [1, 6] then puts "1 & 6"
        else puts "nothing"
      end
    end
    
    def switch_test_2(val, str)
      case [val, str]
        when [1, /Toto(.*) tutu/i] then puts "1 & REGEX match on '#{str}'"
        when [1, "Toto 5468sfe6r8f4zerf tutu"] then puts "1 & '#{str}'"
        else puts "nothing"
      end
    end
    
  end
end





if __FILE__ == $0
  SwitchCase.switch_test_1(1, 6)
  SwitchCase.switch_test_1(2, 6)
  SwitchCase.switch_test_1(1, 5)
  
  SwitchCase.switch_test_2(1, "Toto 5468sfe6r8f4zerf tutu")
  
#  Stdout:
#  
#  1 & 6
#  nothing
#  1 & 5
#  1 & 'Toto 5468sfe6r8f4zerf tutu'
end