require "colorize"

#1
# Let's create a rainbow of colors as an array of hashes,
# where each hash contains the name of the color (key) and
# the RGB values (value).

rainbow_color= {
  [255,0,0] => "red",
  [255,127,0] => "orange",
  [255,255,0] => "yellow",
  [0,255,0] => "green",
  [0,0,255] => "blue",
  [75,0,130] => "indigo",
  [143, 0, 255] => "violet"
}

# create a rainbow of colors as an array of hashes rainbow[0] = :red => {r: 255, g: 0, b: 0}
rainbow = rainbow_color.map do |rgb_array, color|
  {color => {r: rgb_array[0], g: rgb_array[1], b: rgb_array[2]}}
end

#2 Use your rainbow array to print out each color name in sequence.
# (optional) Print the color name in the color it represents using the colorize gem

rainbow.each do |rainbow_color|
  color = rainbow_color.keys.first
  puts "#{color}".colorize(color.to_sym)
end
