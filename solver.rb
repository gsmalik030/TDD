class Solver
  def factorial(no)
    fctrl = 1
    if (no == 0)
      fctrl
    elsif (no < 0)
      raise RuntimeError.new 'input can not be negative'
    else
      for x in 1..no
        fctrl *= x
      end
      fctrl
    end
  end

  def reverse_string(input)
    input.split('').reverse.join('')
  end

  def fizzbuzz(input)
    if (input % 3 == 0 && input % 5 == 0)
      'fizzbuzz'
    elsif (input % 3 == 0)
      'fizz'
    elsif (input % 5 == 0)
      'buzz'
    else
      input.to_s
    end
  end
end
