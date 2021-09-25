first_arg, second_arg = ARGV
first_lines = File.readlines(first_arg)

new_file = File.open(second_arg, 'w') do |f|
  IO.copy_stream(first_arg, second_arg)
  p ARGV
  p second_arg
end
second_lines = File.readlines(second_arg)
line_count = second_lines.size
text = second_lines.join
total_characters = text.length

split_array = first_lines.join.split('')
p "Created #{second_arg} containing #{total_characters} characters"
