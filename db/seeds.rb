# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Starting seed file'

type = ['Credit Card', 'Debit Card']

brands_arr = [
    'Harry Winston',
    'Cartier',
    'Tiffany and Co.', 
    'De Beers', 
    'Blue Nile', 
    'David Yurman', 
    'Chopard', 
    'Zale', 
    'Van Cleef and Arpels', 
    'Mikimoto',
    'Bvlgari', 
    'Tacori', 
    'Buccellati', 
    'James Allen'
]

harry_winston_necklace = [
    'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/forget_me_not_by_harry_winston_lariat_necklace_diamond_and_sapphire_NKSPLTFLRFMN_trans_1.png?itok=dkgnpDud',
    'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/forget_me_not_by_harry_winston_lariat_diamond_necklace_NKDPLTFLRFMN_trans-1h.png?itok=XgoQj5H_',
    'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/forget_me_not_by_harry_winston_lariat_necklace_diamond_and_pink_sapphire_NKPSPLTFLRFMN_trans_1.png?itok=DMl97ytt',
    'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPNASMSF-272525-trans-1h.png?itok=0rdRWiYE',
    'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPBZSMSF-309573-trans-1h.png?itok=8AIX3lKa',
    'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPRD13MLC-262527-trans-1h.png?itok=-Zht8jJ-',
    'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPRD3MAD_377988-trans-1h.png?itok=qGu11r67',
    'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPLTSMMQ-258695-trans-1h_0.png?itok=fPrQi8X5',
    'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPRDOLLP-247063-trans-1h.png?itok=uiuTscGY',
    'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPYRFTRF-228790-trans-1h.png?itok=ZC48Xpbl'
]

10.times do
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: "qwe123",
        phone: Faker::PhoneNumber.cell_phone,
        address: Faker::Address.full_address
    )
end

20.times do

    number = rand(0...2)

    Card.create(
        user_id: User.ids.sample,
        card_type: type[number],
        card_number: Faker::Number.number(digits: 16),
        cvv: Faker::Number.number(digits: 3),
        expire_date: Faker::Date.in_date_period,
        name_on_card: Faker::Name.name,
    )
end

Order.create(user_id: User.ids.sample, paid: true)
Order.create(user_id: User.ids.sample, paid: true)
Order.create(user_id: User.ids.sample, paid: true)
Order.create(user_id: User.ids.sample, paid: false)
Order.create(user_id: User.ids.sample, paid: true)
Order.create(user_id: User.ids.sample, paid: false)
Order.create(user_id: User.ids.sample, paid: false)
Order.create(user_id: User.ids.sample, paid: true)


100.times do

    number = rand(0..14)

    Item.create(
        name: 
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus laoreet non curabitur gravida arcu ac. Facilisis sed odio morbi quis commodo.",
        brand: brands_arr[number],
        price: 
        quantity:
    )
end







puts "Done, Now start me up fool"