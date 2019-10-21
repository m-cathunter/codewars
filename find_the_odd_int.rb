def find_it(seq)
  h = Hash.new(0)
  seq.each do |number|
    h[number] += 1
  end

  h.each do |value, key|
    return value if key.odd?
  end
end
