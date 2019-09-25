users = [
    { first_name: 'Jimmy', last_name: 'Jones', email: 'jimmy@jones.com' },
    { first_name: 'Bob', last_name: 'Roberts', email: 'bob@roberts.com' },
    { first_name: 'Dick', last_name: 'Richards', email: 'dickie@richards.com' },
]

# users.each do |u|
#     User.create(u)
# end

hotels = [
    { name: 'Old Kent Road', color: 'Brown' },
    { name: 'Pall Mall', color: 'Pink' },
    { name: 'The Strand', color: 'Red' }
]

hotels.each do |h|
    Hotel.create(h)
end