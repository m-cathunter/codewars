def compute_depth n
    set = n.digits.to_set
    value = 1
  while set.size != 10
    s = n * (value += 1)
    set = set + s.digits.to_set
  end
    value
end
