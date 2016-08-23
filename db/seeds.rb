# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create({
	name: "Aveeno Ultra Calming Moisturizer with SPF 15",
	description: "Aveeno Ultracalming Daily Moisturizer with SPF 15 is clinically proven to reduce visible redness in as little as 1 week. Formulated with soothing botanicals including feverfew to calm and soothe irritated skin. Non-Comodogenic. Hypoallergenic. Gentle enough for everyday use.",
	img: "https://img.makeupalley.com/2/9/8/2/959321.JPG"
	})

Review.create({
	title: "It's Ok",
	review: "Could have been better. I won't be repurchasing.",
	rating: 3,
	product_id: 1,
	user_id: 1
	})

Topic.create({
	title: "What is your favorite drugstore foundation?",
	content: "Hi everyone! I'm new to this makeup thing and I want to start using some but I need a little guidance. I have a small budget and I plan on building my starter set from items I can find at the drugstore. So my question is: What is your favorite drugstore foundation for acne prone skin??"
	})