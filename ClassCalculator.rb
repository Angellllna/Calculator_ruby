require 'prime'

class Calkulator
  attr_accessor :number1_r, :operation

  def initialize(number1_r, operation)
    @number1_r = number1_r
    @operation = operation.to_s
  end

end
#:- => '-', :* => '*', :/ => '/', :% => '%', :** => '**', :sqrt => 'sqrt', :sin => 'sin', :cos => 'cos', :tan => 'tan', :ln => 'ln', :exp => 'exp', :primes => 'primes'
class Command < Calkulator
  def run
    operation_h = {"+" => '+', "-" => '-', '*' => '*', '/' => '/', '%' => '%', :** => '**', 'sqrt' => 'sqrt', 'sin' => 'sin', 'cos' => 'cos', 'tan' => 'tan', 'ln' => 'ln', 'exp' => 'exp', 'primes' => 'primes'}
    case operation_h.key(@operation)
    when 'pow'
      puts "Nupber for power"
      number2_pow = gets.to_i
      number1_r = @number1_r ** number2_pow
    when 'sqrt'
      puts Math.sqrt(@number1_r)
    when 'sin'
      @number1_r = Math.sin(@number1_r)
    when 'cos'
      @number1_r = Math.cos(@number1_r)
    when 'tan'
      @number1_r = Math.tan(@number1_r)
    when 'log10'
      @number1_r = Math.log10(@number1_r)
    when 'log2'
      @number1_r = Math.log2(@number1_r)
    when 'ln'
      @number1_r = Math.log(@number1_r)
    when '!'
      @number1_r = (1..@number1_r).inject(:*) || 1
    when 'sqrt'
      @number1_r = Math.cosh(@number1_r)
    when '--x'
      @number1_r = (--@number1_r)
    when '++x'
      @number1_r = (++@number1_r)
    else
      puts 'Number 2: '
      @number2_r = gets.to_i
      case operation_h.key(@operation)
      when '+'
        @number1_r += @number2_r
      when '-'
        @number1_r -= @number2_r
      when '*'
        @number1_r *= @number2_r
      when '%'
        @number1_r %= @number2_r
      when '/'
        begin
          @number1_r /= @number2_r
        rescue ZeroDivisionError
          puts 'На ноль ділити не можна'
        end
      else
        puts 'Немає токої операції'
      end
    end

  end
end

memory = 0
stack = []
prim = []
while true
  puts 'Number 1: '
  number1_ = gets.to_i

  while true
    puts 'Operation (+, -, *, /, %, pow, --x, ++x, sqrt, sin, con, tan, log2, log10, In, !
      end - for complete the work, primes'
    operation = gets.strip

    if operation == "end"
      break
    end

    case operation
    when 'mw'
      memory = number1_
      stack.push number1_
      next
    when 'mr'
      number1_ = memory
      puts "Stack = #{stack}"
      break
    when 'primes'
      puts "Prime numbers: #{prim}"
      next
    end


    result = Command.new(number1_, operation)
    puts number1_ = result.run

    if Prime.prime?(number1_)
      prim.push(number1_3)
    end
  end

  puts "Stack = #{stack}"

  puts "Prime numbers: #{prim}"

  puts "end - for complete the work
and next - for continue"
  s = gets.chomp
  if s == "end"
    break
  end

end