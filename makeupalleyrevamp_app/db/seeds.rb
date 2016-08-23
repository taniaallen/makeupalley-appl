# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create({
	name: "Revlon Colorstay Eyeliner",
	description: "This Revlon Colorstay Eyeliner will stay looking bold and colorful all day long. It is waterproof and will not smear easily. In addition, the Revlon waterproof eyeliner comes with an easy-to-use pull-out sharpener.",
	img: "https://smedia.webcollage.net/rwvfp/wc/cp/16102991/module/cpwalmart/_cp/products/1414527274246/tab-d2ae7277-b861-4242-8042-25563b500aa6/bf119c2c-1b0c-4531-a873-a7c6d3ce1904.jpg.w480.jpg"
	})

Review.create({
	title: "It's Ok",
	review: "Could have been better. I won't be repurchasing.",
	rating: 3,
	product_id: 1,
	user_id: 1
	})

# Topic.create({
# 	title: "What is your favorite drugstore foundation?",
# 	content: "Hi everyone! I'm new to this makeup thing and I want to start using some but I need a little guidance. I have a small budget and I plan on building my starter set from items I can find at the drugstore. So my question is: What is your favorite drugstore foundation for acne prone skin??"
# 	})