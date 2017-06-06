def oxford_comma(array)
  case array.length
  when 1
    array.join
  when 2
    array.join(" and ")
  when 3
    new_array = array.insert(-2, "and ")
    new_array = "#{new_array[0...-1].join(", ")}" + "#{new_array.last}"
  else
    if array.length > 3
      new_array = array.insert(-2, "and ")
      new_array = "#{new_array[0...-1].join(", ")}" + "#{new_array.last}"
    end
  end
end
