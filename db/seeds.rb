user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

City.find_or_create_by(name: 'Krakow', short_name: 'Krk')
City.find_or_create_by(name: 'Lodz', short_name: 'Lz')
City.find_or_create_by(name: 'San Francisco', short_name: 'Sfr')
City.find_or_create_by(name: 'Warszawa', short_name: 'Waw')

