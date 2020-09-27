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

# brands_arr = [
#     'Harry Winston',
#     'Cartier',
#     'Tiffany and Co.', 
#     'De Beers', 
#     'Blue Nile', 
#     'David Yurman', 
#     'Chopard', 
#     'Zale', 
#     'Van Cleef and Arpels', 
#     'Mikimoto',
#     'Bvlgari', 
#     'Tacori', 
#     'Buccellati', 
#     'James Allen'
# ]

# harry_winston_necklace = [
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/forget_me_not_by_harry_winston_lariat_necklace_diamond_and_sapphire_NKSPLTFLRFMN_trans_1.png?itok=dkgnpDud',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/forget_me_not_by_harry_winston_lariat_diamond_necklace_NKDPLTFLRFMN_trans-1h.png?itok=XgoQj5H_',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/forget_me_not_by_harry_winston_lariat_necklace_diamond_and_pink_sapphire_NKPSPLTFLRFMN_trans_1.png?itok=DMl97ytt',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPNASMSF-272525-trans-1h.png?itok=0rdRWiYE',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPBZSMSF-309573-trans-1h.png?itok=8AIX3lKa',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPRD13MLC-262527-trans-1h.png?itok=-Zht8jJ-',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPRD3MAD_377988-trans-1h.png?itok=qGu11r67',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPLTSMMQ-258695-trans-1h_0.png?itok=fPrQi8X5',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPRDOLLP-247063-trans-1h.png?itok=uiuTscGY',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPYRFTRF-228790-trans-1h.png?itok=ZC48Xpbl'
# ]

# harry_winston_ring = [
#     "https://www.harrywinston.com/sites/default/files/styles/product_slide/public/prong_set_wedding_band_round_brilliant_diamond_and_ruby_WBRPRDS05SP05_592754_trans_2_0.png?itok=xe5IVazn",
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/prong_set_wedding_band_round_brilliant_diamond_and_sapphire_WBSPRDS05SP05_592756_trans_2.png?itok=Xc-y2wLj',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/winston_gates_by_harry_winston_fashion_ring_diamond_platinum_FRDPRD1MWG_trans-1.png?itok=uydP70TK',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/winston_cluster_by_harry_winston_ring_sapphire_and_diamond_FRSPCLPMWC_568566_trans_1.png?itok=-F9mdguf',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/winston_cluster_by_harry_winston_ring_ruby_and_diamond_FRRPCLPMWC_569258_trans_1.png?itok=XbMzumbi',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/forget_me_not_by_harry_winston_ring_diamond_and_sapphire_FRSPRFFLRFMN_trans_1.png?itok=zMrV2Gz9',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/forget_me_not_by_harry_winston_ring_diamond_and_pink_sapphire_FRPSPRFFLRFMN_trans_1.png?itok=gVA3xjpd',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/FRDPTW2STSF_368125_white_1n_mobile.png?itok=mzJEHsDX',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/pirouette_by_harry_winston_ring__diamond__FRDPRFPRSPIR_trans-1h.png?itok=u0wsZTLT',
#     'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry/FRDPDE000LTS_247052_1_Masked.png?itok=ALVyuE_h'
# ]


















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



Item.create(
    name: "Forget-Me-Not by Harry Winston, Lariat Diamond Necklace", 
    description: "This feminine lariat diamond necklace features charming Forget-Me-Nots in full bloom. With 177 pear-shaped, marquise, and round brilliant diamonds, this fine jewelry design weighs a total of approximately 15.62 carats of the world's rarest diamonds, set in platinum. A timeless bouquet, this enchanting diamond jewelry creation adds an alluring touch to any occasion." , 
    price: 118000, 
    image: 'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/forget_me_not_by_harry_winston_lariat_diamond_necklace_NKDPLTFLRFMN_trans-1h.png?itok=XgoQj5H_', 
    brand: 'Harry Winston',
    jewelry_type: "Necklace"
)

Item.create(
    name: "Forget-Me-Not by Harry Winston, Lariat Sapphire and Diamond Necklace",
    description: "The world's natural beauty captivated Mr. Winston, who spent his famed career reinterpreting its splendor into floral-inspired fine jewelry designs. Blooming with color, the lariat sapphire and diamond necklace is a shining example of the House's richest tradition. Nature's captivating Forget-Me-Not flower comes to life through a romantic arrangement of the world's most magnificent pear-shaped, marquise, and round brilliant gemstones. This feminine yet sophisticated design promises to bring a fresh floral touch to any occasion. 78 pear-shaped and round brilliant sapphires weighing a total of approximately 9.37 carats and 99 marquise and round brilliant diamonds weighing a total of approximately 8.61 carats, set in platinum." , 
    price: 120000, 
    image: 'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/forget_me_not_by_harry_winston_lariat_necklace_diamond_and_sapphire_NKSPLTFLRFMN_trans_1.png?itok=dkgnpDud', 
    brand: 'Harry Winston', 
    jewelry_type: "Necklace"
)

Item.create(
    name: "Forget-Me-Not by Harry Winston, Lariat Pink Sapphire and Diamond Necklace",
    description: "Following the House's longstanding tradition of marrying nature's beauty with the world's most magnificent gemstones, this lariat-style pink sapphire and diamond necklace draws inspiration from the captivating Forget-Me-Not flower. Blooming with color, this enchanting fine jewelry design is feminine and playful, yet sophisticated and timeless. 78 pear-shaped and round brilliant pink sapphires weighing a total of approximately 8.92 carats and 99 marquise and round brilliant diamonds weighing a total of approximately 8.61 carats, set in platinum." , 
    price: 120000, 
    image: 'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/forget_me_not_by_harry_winston_lariat_necklace_diamond_and_pink_sapphire_NKPSPLTFLRFMN_trans_1.png?itok=DMl97ytt', 
    brand: 'Harry Winston', 
    jewelry_type: "Necklace"
)

Item.create(
    name: "Sunflower by Harry Winston, Medium Diamond Necklace", 
    description: "Inspired by the beauty of nature, the Sunflower Collection is a cluster of diamonds, where diamonds are set with minimal metal to maximize the light returned. The result is a three-dimensional sculpture of brilliance that captures the delicate symmetry of a sunflower. Versatile and wearable, the Sunflower Collection seamlessly transitions from day-to-night. 363 round brilliant diamonds weighing a total of approximately 25.01 carats, set in platinum.",
    price: 88000, 
    image: 'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPNAMESF-206975-trans-1h.png?itok=CwJ8mdUB', 
    brand: 'Harry Winston', 
    jewelry_type: "Necklace"
)

Item.create(
    name: "Lily Cluster by Harry Winston, Diamond Necklace in Platinum", 
    description: "At Harry Winston, inspiration often begins with the extraordinary elegance of nature. Drawing upon archival sketches made in our design studio in the 1940s, the Lily Cluster Collection brings contemporary elegance to seven decades of tradition, and recalls the natural beauty of lilies in bloom. 619 round brilliant diamonds weighing a total of approximately 5.25 carats, set in platinum.", 
    price: 53100, 
    image: 'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPRD13MLC-262527-trans-1h.png?itok=-Zht8jJ-', 
    brand: 'Harry Winston', 
    jewelry_type: "Necklace"
)

Item.create(
    name: "Round Brilliant Diamond Lariat", 
    description: "A brilliant statement of impeccable style and sophistication, the diamond lariat necklace from Harry Winston features rows of cascading diamonds that delicately drape around a woman's décolletage. 119 marquise and round brilliant diamonds weighing a total of approximately 9.07 carats, set in platinum.", 
    price: 74230, 
    image: 'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPLTSMMQ-258695-trans-1h_0.png?itok=fPrQi8X5', 
    brand: 'Harry Winston', 
    jewelry_type: "Necklace"
)

Item.create(
    name: "Traffic by Harry Winston, Diamond Necklace", 
    description: "With linear placement of baguette and round brilliant diamonds, the Traffic Collection imitates the movement and lights on Manhattan’s bustling avenues. From atop its grand high-rises, far above street level, New York shows its splendor, its exciting streets flowing with the rhythm of city life. Perhaps nothing symbolizes the city’s energy so truly as the mesmerizing movement of its thoroughfares. The Traffic necklace is a modern jewel that creates an original statement, and is the epitome of unconventional style. 10 baguette and 86 round brilliant diamonds weighing a total of approximately 11.53 carats, set in platinum.",
    price: 69799, 
    image: 'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPYRFTRF-228790-trans-1h.png?itok=ZC48Xpbl', 
    brand: 'Harry Winston', 
    jewelry_type: "Necklace"
)
Item.create(
    name: "Art Deco by Harry Winston, Diamond Sautoir", 
    description: "The House of Harry Winston continues its creative tradition through this captivating diamond necklace underscoring the distinctive architectural style of the 1930s. The opulent Art Deco by Harry Winston, Diamond Sautoir combines the sculptural motif with the fluidity of signature Winston diamond design that allows for a bold statement of personal style – no matter the hour or occasion. 318 baguette and round brilliant diamonds weighing a total of 32.75 carats, set in platinum. Length 40 inches" , 
    price: 130000, 
    image: 'https://www.harrywinston.com/sites/default/files/styles/product_slide/public/jewelry-img/NKDPRD3MAD_377988-trans-1h.png?itok=qGu11r67', 
    brand: 'Harry Winston', 
    jewelry_type: "Necklace"
)
# Item.create(name: "", description: "." , price: , image: '', brand: 'Harry Winston', jewelry_type: "Necklace")
# Item.create(name: "", description: "." , price: , image: '')







puts "Done, Now start me up fool"