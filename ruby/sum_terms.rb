def sum_terms(n)
  (1..n).inject(0) do | result, n |
    result += (n*n + 1)
  end
end






p sum_terms(5)