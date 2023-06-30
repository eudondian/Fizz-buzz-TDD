class Solver
  def factorial(n)
    if n == 0
      1
    elsif n < 0
      raise 'Negative number entered'
    else
      n * factorial(n - 1)
    end
  end
  def reverse(str)
    str.reverse
  end
  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
