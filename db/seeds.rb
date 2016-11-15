courses_ary = ['Appetizer', 'Salad', 'Main Course', 'Dessert']

courses_ary.each { |course| Course.create(name: course) }


ingredients_ary = [ 'Salt',
                    'Pepper',
                    'Tomato',
                    'Cheese', 
                    'Sugar', 
                    'Milk', 
                    'Eggs', 
                    'Wine', 
                    'Avocado',
                    'Chicken',
                    'Beef',
                    'Chocolate']

ingredients_ary.each { |ingredient| Ingredient.create(name: ingredient) }


measurements_ary = [ 'tsp',
                     'tbsp',
                     'grams',
                     'ounces',
                     'lb',
                     'lbs',
                     'cup',
                     'cups',
                     'mL',
                     '']

#############
##  users  ##
#############


User.create( first_name: Jenny,
             last_name: Smith,
             email: js@jenny.com,
             password: 'banana')

User.create( first_name: Greg,
             last_name: Adams,
             email: ga@greg.com,
             password: 'banana')

User.create( first_name: Taylor,
             last_name: King,
             email: tk@taylor.com,
             password: 'banana')

User.create( first_name: Lori,
             last_name: Tanner,
             email: lt@lori.com,
             password: 'banana')

User.create( first_name: Don,
             last_name: Rutter,
             email: dr@don.com,
             password: 'banana')

##############
##  user 1  ##
##############

# appetizer
app_one = Recipe.create(creator_id: 1,
              course_id: 1,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Mini Pizza Rolls",
              directions: Faker::Lorem.paragraph)

  app_one.recipe_ingredients.create( ingredient_id: 1,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  app_one.recipe_ingredients.create( ingredient_id: 5,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# salad
salad_one = Recipe.create(creator_id: 1,
              course_id: 2,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Greek Salad",
              directions: Faker::Lorem.paragraph)

  salad_one.recipe_ingredients.create( ingredient_id: 2,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  salad_one.recipe_ingredients.create( ingredient_id: 6,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  salad_one.recipe_ingredients.create( ingredient_id: 8,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# main course
main_one = Recipe.create(creator_id: 1,
              course_id: 3,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Black Bean Burger",
              directions: Faker::Lorem.paragraph)

  main_one.recipe_ingredients.create( ingredient_id: 1,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_one.recipe_ingredients.create( ingredient_id: 3,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_one.recipe_ingredients.create( ingredient_id: 5,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_one.recipe_ingredients.create( ingredient_id: 7,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_one.recipe_ingredients.create( ingredient_id: 9,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# dessert
dessert_one = Recipe.create(creator_id: 1,
              course_id: 4,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Double Chocolate Lava Cake",
              directions: Faker::Lorem.paragraph)

  dessert_one.recipe_ingredients.create( ingredient_id: 1,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  dessert_one.recipe_ingredients.create( ingredient_id: 7,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )



##############
##  user 2  ##
##############

# appetizer
app_two = Recipe.create(creator_id: 2,
              course_id: 1,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Southwestern Rolls",
              directions: Faker::Lorem.paragraph)

  app_two.recipe_ingredients.create( ingredient_id: 2,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  app_two.recipe_ingredients.create( ingredient_id: 8,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# salad
salad_two = Recipe.create(creator_id: 2,
              course_id: 2,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Garden Salad",
              directions: Faker::Lorem.paragraph)

  salad_two.recipe_ingredients.create( ingredient_id: 3,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  salad_two.recipe_ingredients.create( ingredient_id: 7,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  salad_two.recipe_ingredients.create( ingredient_id: 9,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# main course
main_two = Recipe.create(creator_id: 2,
              course_id: 3,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Champion Steak",
              directions: Faker::Lorem.paragraph)

  main_two.recipe_ingredients.create( ingredient_id: 2,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_two.recipe_ingredients.create( ingredient_id: 4,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_two.recipe_ingredients.create( ingredient_id: 6,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_two.recipe_ingredients.create( ingredient_id: 8,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_two.recipe_ingredients.create( ingredient_id: 10,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# dessert
dessert_two = Recipe.create(creator_id: 2,
              course_id: 4,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Neopololitan Trio",
              directions: Faker::Lorem.paragraph)

  dessert_two.recipe_ingredients.create( ingredient_id: 2,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  dessert_two.recipe_ingredients.create( ingredient_id: 4,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )



##############
##  user 3  ##
##############

# appetizer
app_three = Recipe.create(creator_id: 3,
              course_id: 1,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Spicy Chicken Skewers",
              directions: Faker::Lorem.paragraph)

  app_three.recipe_ingredients.create( ingredient_id: 3,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  app_three.recipe_ingredients.create( ingredient_id: 2,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# salad
salad_three = Recipe.create(creator_id: 3,
              course_id: 2,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Shrimp Salad",
              directions: Faker::Lorem.paragraph)

  salad_three.recipe_ingredients.create( ingredient_id: 10,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  salad_three.recipe_ingredients.create( ingredient_id: 3,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  salad_three.recipe_ingredients.create( ingredient_id: 8,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# main course
main_three = Recipe.create(creator_id: 3,
              course_id: 3,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Fish n Chips",
              directions: Faker::Lorem.paragraph)

  main_three.recipe_ingredients.create( ingredient_id: 1,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_three.recipe_ingredients.create( ingredient_id: 3,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_three.recipe_ingredients.create( ingredient_id: 7,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_three.recipe_ingredients.create( ingredient_id: 8,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_three.recipe_ingredients.create( ingredient_id: 9,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# dessert
dessert_three = Recipe.create(creator_id: 3,
              course_id: 4,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Cinnamon Roll",
              directions: Faker::Lorem.paragraph)

  dessert_three.recipe_ingredients.create( ingredient_id: 12,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  dessert_three.recipe_ingredients.create( ingredient_id: 2,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )



##############
##  user 4  ##
##############

# appetizer
app_four = Recipe.create(creator_id: 4,
              course_id: 1,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Mozzo Sticks",
              directions: Faker::Lorem.paragraph)

  app_four.recipe_ingredients.create( ingredient_id: 3,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  app_four.recipe_ingredients.create( ingredient_id: 9,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# salad
salad_four = Recipe.create(creator_id: 4,
              course_id: 2,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "American Cobb",
              directions: Faker::Lorem.paragraph)

  salad_four.recipe_ingredients.create( ingredient_id: 2,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  salad_four.recipe_ingredients.create( ingredient_id: 8,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  salad_four.recipe_ingredients.create( ingredient_id: 11,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# main course
main_four = Recipe.create(creator_id: 4,
              course_id: 3,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "B.L.A.T Special",
              directions: Faker::Lorem.paragraph)

  main_four.recipe_ingredients.create( ingredient_id: 1,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_four.recipe_ingredients.create( ingredient_id: 4,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_four.recipe_ingredients.create( ingredient_id: 7,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_four.recipe_ingredients.create( ingredient_id: 8,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_four.recipe_ingredients.create( ingredient_id: 11,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )

# dessert
dessert_four = Recipe.create(creator_id: 4,
              course_id: 4,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Classic Sundae",
              directions: Faker::Lorem.paragraph)

  dessert_four.recipe_ingredients.create( ingredient_id: 12,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  dessert_four.recipe_ingredients.create( ingredient_id: 4,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )



##############
##  user 5  ##
##############

# appetizer
app_five = Recipe.create(creator_id: 5,
              course_id: 1,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Nachos, But Mine",
              directions: Faker::Lorem.paragraph)

  app_five.recipe_ingredients.create( ingredient_id: 1,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  app_five.recipe_ingredients.create( ingredient_id: 4,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# salad
salad_five = Recipe.create(creator_id: 5,
              course_id: 2,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Winter Waldorf",
              directions: Faker::Lorem.paragraph)

  salad_five.recipe_ingredients.create( ingredient_id: 1,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  salad_five.recipe_ingredients.create( ingredient_id: 9,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  salad_five.recipe_ingredients.create( ingredient_id: 10,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# main course
main_five = Recipe.create(creator_id: 5,
              course_id: 3,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Pasta Marinara",
              directions: Faker::Lorem.paragraph)


  main_five.recipe_ingredients.create( ingredient_id: 3,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_five.recipe_ingredients.create( ingredient_id: 4,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_five.recipe_ingredients.create( ingredient_id: 5,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_five.recipe_ingredients.create( ingredient_id: 10,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  main_five.recipe_ingredients.create( ingredient_id: 11,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
# dessert
dessert_five = Recipe.create(creator_id: 5,
              course_id: 4,
              difficulty: rand(1..5),
              prep_time: rand(10..45),
              name: "Green Tea Gelato",
              directions: Faker::Lorem.paragraph)

  dessert_five.recipe_ingredients.create( ingredient_id: 2,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )
  dessert_five.recipe_ingredients.create( ingredient_id: 7,
                                     amount: rand(1..6),
                                     measurement: measurements_ary.sample )