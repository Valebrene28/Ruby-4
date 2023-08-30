def blank_seating_chart(number_of_rows, seats_per_row)
  # return a 2d array to represent a seating chart that contains
  # number_of_rows nested arrays, each with seats_per_row entries of nil to
  # represent that each seat is empty.

    blank_seating_chart= Array.new(number_of_rows) {Array.new(seats_per_row)}

  # Example: blank_seating_chart(2, 3) should return:
  # [
  #   [nil, nil, nil],
  #   [nil, nil, nil]
  # ]

  # NOTE: if one of the nested arrays is changed, the others should **not**
  # change with it
end

p blank_seating_chart(3, 2)

def add_seat_to_row(chart, row_index, seat_to_add)
  # take a chart (2d array)  and add seat_to_add to the end of the row that is
  # at row_index index of the chart, then return the chart

  chart[row_index].push(seat_to_add)
  chart
end
chart= [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']] 
row_index= 1
seat_to_add= "Jack"

def add_another_row(chart, row_to_add)
  # take a chart and add row_to_add to the end of the chart,
  # then return the chart.
  chart << (row_to_add)
  chart
end


row_to_add = ['Bo', nil, 'Kim']
chart = [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']]
p add_another_row(chart, row_to_add)

def delete_seat_from_row(chart, row_index, seat_index)
  # take a chart and delete the seat at seat_index of the row at row_index of
  # the chart, then return the chart
  # Hint: explore the ruby docs to find a method for deleting from an array!
  chart[row_index].delete_at(seat_index)
  chart
end
row_index= 0
seat_index= 1
chart= [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']]

chart = [[nil, 'Bob'], ['Joe', nil], [nil, 'Bill']]
p delete_seat_from_row(chart, row_index, seat_index)

def delete_row_from_chart(chart, row_index)
  # take a chart and delete the row at row_index of the chart,
  # then return the chart
  chart.delete_at(row_index)
  chart
end
row_index = 1
p delete_row_from_chart(chart, row_index)
# p delete_row_from_chart(chart, row_index)


def count_empty_seats(chart)
  # take a chart and return the number of empty (nil) seats in it
  chart.flatten.count(nil)
 
  # NOTE: `chart` should **not** be mutated
end

chart_si = [[nil, 'Bob', 'Joe',], [nil, nil, 'Bill']]
count_empty_seats(chart_si)

def find_favorite(array_of_hash_objects)
  # take an array_of_hash_objects and return the hash which has the key/value
  # pair :is_my_favorite? => true. If no hash returns the value true to the key
  # :is_my_favorite? it should return nil
 
  # array_of_hash_objects will look something like this:
  # [
  #   { name: 'Ruby', is_my_favorite?: true },
  #   { name: 'JavaScript', is_my_favorite?: false },
  #   { name: 'HTML', is_my_favorite?: false }
  # ]

  # TIP: there will only be a maximum of one hash in the array that will
  # return true to the :is_my_favorite? key
  array_of_hash_objects.each do |value|
    return value if value[:is_my_favorite?] == true
  end
  nil



end
arr = [
  { name: 'Python', is_my_favorite?: false },
  { name: 'JavaScript', is_my_favorite?: false },
  { name: 'HTML', is_my_favorite?: false }
]

p add_seat_to_row(chart, row_index, seat_to_add)
p find_favorite(arr)