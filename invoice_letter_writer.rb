require 'erb'

kids_data   = File.read('data/kids-data.txt')
naughty_letter = File.read('templates/naughty_letter_template.txt.erb')

kids_data.each_line do |kid|

  kid_data_array = kid.split

  name          = kid_data_array[0]
  gender        = kid_data_array[1]
  behavior      = kid_data_array[2]
  toys          = kid_data_array[3..8]
  street_number = kid_data_array[9]
  street_name   = kid_data_array[10]
  street_suffix = kid_data_array[11]
  postal_code   = kid_data_array[12]
  hosue_value   = kid_data_array[13]
  infraction    = kid_data_array[15]


  filename    = 'letters/invoices/' + name + '.txt'
  letter_text = ERB.new(invoice_letter, nil, '-').result(binding)

  puts "Writing #{filename}."
  File.write(filename, letter_text)

end

puts 'Done!'
