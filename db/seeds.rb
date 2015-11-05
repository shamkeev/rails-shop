
cpus_category = Category.create(name: 'CPUs')
motherboards_category = Category.create(name: 'Motherboards')
ram_category = Category.create(name: 'RAM')
hdd_category = Category.create(name: 'HDDs')

fixtures_category = Category.create(name: 'Fixtures')

fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')

cpu = Product.create(
    title: 'Intel Core i7',
    price: 300,
    description: Faker::Lorem.paragraph,
    category: cpus_category,
    image: File.new(fixtures_path.join('cpu.jpg'))
)


ram = Product.create(title: '4GB DDR3 RAM', price: 40, description: Faker::Lorem.paragraph, category: ram_category,image: File.new(fixtures_path.join('ram.jpg')))


hdd = Product.create(title: '1TB Seagate HDD', price: 60, description: Faker::Lorem.paragraph, category: hdd_category,image: File.new(fixtures_path.join('hdd.jpg')))


mb = Product.create(title: 'Asus P5Q3', price: 120, description: Faker::Lorem.paragraph, category: motherboards_category,image: File.new(fixtures_path.join('mb.jpg')))


50.times do
  Product.create(title: Faker::Commerce.product_name,
                 price: Faker::Commerce.price,
                 description: Faker::Lorem.paragraph,
                 category: fixtures_category)
end

user = User.create(name: 'John Doe', email: 'johndoe@example.com', password: '12345678', password_confirmation: '12345678')
admin_user = User.create(name: 'Admin', email: 'admin@example.com', password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)