commands = [
    ['forward', '5'],
    ['down', '5'],
    ['forward', '8'],
    ['up', '3'],
    ['down', '8'],
    ['forward', '2']
]

horizontal = 0
depth = 0

commands.each do |cmd|
  if cmd[0] == 'forward'
    horizontal += cmd[1].to_i
  elsif cmd[0] == 'down'
    depth += cmd[1].to_i
  elsif cmd[0] == 'up'
    depth -= cmd[1].to_i
  end

end

p horizontal * depth