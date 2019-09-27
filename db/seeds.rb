users = [
    { first_name: 'Jimmy', last_name: 'Jones', email: 'jimmy@jones.com' },
    { first_name: 'Bob', last_name: 'Roberts', email: 'bob@roberts.com' },
    { first_name: 'Dick', last_name: 'Richards', email: 'dickie@richards.com' },
]

users.each do |u|
    User.create(u)
end

deed_OKR = Deed.create( name: 'Old Kent Road', color: 'Brown', board_order: 1, price: 60 )
deed_PM = Deed.create( name: 'Pall Mall', color: 'Pink', board_order: 11, price: 140 )
deed_TS = Deed.create( name: 'The Strand', color: 'Red', board_order: 22, price: 220 )

hotels = [
    { name: 'Brown Ibis', deed: deed_OKR, rating: 'A Flophouse' },
    { name: 'PM Hilton', deed: deed_PM, rating: 'Cheap and cheerful' },
    { name: 'Red Carlton', deed: deed_TS, rating: 'Mid Range' },
]

hotels.each do |h|
    Hotel.create(h)
end