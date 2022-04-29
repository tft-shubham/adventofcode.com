depth_arr = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
count = 0
for i in 0..depth_arr.length - 2
  count += 1 if depth_arr[i] < depth_arr[i + 1]
end
puts count