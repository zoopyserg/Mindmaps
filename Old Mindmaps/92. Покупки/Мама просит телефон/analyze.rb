require 'pp'

work_battery_life_data = []
work_performance_data = []
sling_shot_data = []
sling_shot_extreme_opengl_data = []
sling_shot_extreme_unlimited_data = []
sling_shot_extreme_vulkan_data = []
sling_shot_unlimited_data = []
storage_data = []
work_2_0_battery_life_data = []
work_2_0_performance_data = []

File.open("data/work battery life data.txt").each_line do |line| 
  work_battery_life_data.push line.strip
end

File.open("data/work performance data.txt").each_line do |line| 
  work_performance_data.push line.strip
end

File.open("data/sling shot data.txt").each_line do |line| 
  sling_shot_data.push line.strip
end

File.open("data/sling shot extreme opengl data.txt").each_line do |line| 
  sling_shot_extreme_opengl_data.push line.strip
end

File.open("data/sling shot extreme unlimited data.txt").each_line do |line| 
  sling_shot_extreme_unlimited_data.push line.strip
end

File.open("data/sling shot extreme vulkan data.txt").each_line do |line| 
  sling_shot_extreme_vulkan_data.push line.strip
end

File.open("data/sling shot unlimited data.txt").each_line do |line| 
  sling_shot_unlimited_data.push line.strip
end

File.open("data/storage data.txt").each_line do |line| 
  storage_data.push line.strip
end

File.open("data/work 2 0 battery life data.txt").each_line do |line| 
  work_2_0_battery_life_data.push line.strip
end

File.open("data/work 2 0 performance data.txt").each_line do |line| 
  work_2_0_performance_data.push line.strip
end

list_of_all_cellphones = [ work_battery_life_data,
                           work_performance_data,
                           sling_shot_data,
                           sling_shot_extreme_opengl_data,
                           sling_shot_extreme_unlimited_data,
                           sling_shot_extreme_vulkan_data,
                           sling_shot_unlimited_data,
                           storage_data,
                           work_2_0_battery_life_data,
			   work_2_0_performance_data].flatten.uniq

cellphones_table = []

list_of_all_cellphones.each do |phone|
	work_battery_life_data_position = work_battery_life_data.index(phone)
	work_performance_data_position = work_performance_data.index(phone)
	sling_shot_data_position = sling_shot_data.index(phone) 
	sling_shot_extreme_opengl_data_position = sling_shot_extreme_opengl_data.index(phone)
	sling_shot_extreme_unlimited_data_position = sling_shot_extreme_unlimited_data.index(phone)
	sling_shot_extreme_vulkan_data_position = sling_shot_extreme_vulkan_data.index(phone)
	sling_shot_unlimited_data_position = sling_shot_unlimited_data.index(phone)
	storage_data_position = storage_data.index(phone)
	work_2_0_battery_life_data_position = work_2_0_battery_life_data.index(phone)
	work_2_0_performance_data_position = work_2_0_performance_data.index(phone)

	# make them start from 1 not from zero
	work_battery_life_data_position += 1 if work_battery_life_data_position
	work_performance_data_position += 1 if work_performance_data_position
	sling_shot_data_position += 1 if sling_shot_data_position
	sling_shot_extreme_opengl_data_position += 1 if sling_shot_extreme_opengl_data_position
	sling_shot_extreme_unlimited_data_position += 1 if sling_shot_extreme_unlimited_data_position
	sling_shot_extreme_vulkan_data_position += 1 if sling_shot_extreme_vulkan_data_position
	sling_shot_unlimited_data_position += 1 if sling_shot_unlimited_data_position
	storage_data_position += 1 if storage_data_position
	work_2_0_battery_life_data_position += 1 if work_2_0_battery_life_data_position
	work_2_0_performance_data_position += 1 if work_2_0_performance_data_position

	if (work_battery_life_data_position && 
			work_performance_data_position && 
			sling_shot_data_position && 
			# sling_shot_extreme_opengl_data_position && 
			# sling_shot_extreme_unlimited_data_position &&
	                # sling_shot_extreme_vulkan_data_position &&
	                # sling_shot_unlimited_data_position &&
	                storage_data_position) then
	                # work_2_0_battery_life_data_position &&
	                # work_2_0_performance_data_position)

	cellphones_table << [
		phone, 
		Math.sqrt((work_battery_life_data_position)**2 + # can do 2* if I want to see what I get if battery for me is more important than everything else
                          (work_performance_data_position)**2 + 
                          (sling_shot_data_position)**2 + 
                          (storage_data_position)**2),
		{"battery" => work_battery_life_data_position,
                 "work" => work_performance_data_position,
                 "graphics" => sling_shot_data_position,
                 "storage" => storage_data_position}
	] 
                                       # sling_shot_extreme_opengl_data_position**2 +
                                       # sling_shot_extreme_unlimited_data_position**2 +
                                       # sling_shot_extreme_vulkan_data_position**2 +
                                       # sling_shot_unlimited_data_position**2 +
                                       # work_2_0_battery_life_data_position**2 +
                                       # work_2_0_performance_data_position**2)]
			end
end

cellphones_table.sort_by { |item| item[1] }.each_with_index do |item, index|
  puts item[2]["storage"]
end
