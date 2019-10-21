def validBraces(braces)
  while %w[ {} () [] ].any? { |valid_braces| braces.include? valid_braces }
    braces = remove_valid_braces(braces, "()")
    braces = remove_valid_braces(braces, "[]")
    braces = remove_valid_braces(braces, "{}")
  end

  if braces.empty?
    true
  else
    false
  end
end

def remove_valid_braces(braces, valid_braces)
  braces = braces.partition(valid_braces)
  braces.delete(valid_braces)
  braces = braces.join
end
