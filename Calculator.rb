require 'prime'
memory = 0
stack = []
prim = []
while true
  puts 'Number 1: '
  number1_r = gets.to_i

  while true
    puts 'Operation (+, -, *, /, mod, pow, --x, ++x, sqrt, sin, con, tan, log2, log10, In, !
    end - for complete the work'
    operation = gets.chomp

    if operation == "end"
      break
    end

    case operation
      when 'mw'
        memory = number1_r
      when 'mr'
        number1_r = memory
      when 'pow'
        puts "Nupber for power"
        number2_pow = gets.to_i
        number1_r = number1_r ** number2_pow
      when 'sqrt'
        puts Math.sqrt(number1_r)
      when 'sin'
        number1_r = Math.sin(number1_r)
      when 'cos'
        number1_r = Math.cos(number1_r)
      when 'tan'
        number1_r = Math.tan(number1_r)
      when 'log10'
        number1_r = Math.log10(number1_r)
      when 'log2'
        number1_r = Math.log2(number1_r)
      when 'ln'
        number1_r = Math.log(number1_r)
      when '!'
        number1_r = (1..number1_r).inject(:*) || 1
      when 'sqrt'
        number1_r = Math.cosh(number1_r)
      when '--x'
        number1_r = (--number1_r)
      when '++x'
        number1_r = (++number1_r)
      else
        puts 'Number 2: '
        number2 = gets.to_i
        case operation
          when '+'
            number1_r += number2
          when '-'
            number1_r -= number2
          when '*'
            number1_r *= number2
          when 'mod'
            number1_r %= number2
          when '/'# Если пользователь выбрал деление, выводить результат нужно аккуратно
            begin
              number1_r /= number2
            rescue ZeroDivisionError
              puts 'На ноль делить нельзя'
            end
          else
            puts 'Нет такой операции'
        end
        end

    puts "Answer: #{number1_r}"

    stack.push number1_r

    if Prime.prime?(number1_r)
      prim.push(number1_r)
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