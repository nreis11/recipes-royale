
# Course.destroy_all
# User.destroy_all
# Recipe.destroy_all

courses = ['Appetizer', 'Salad', 'Main Course', 'Dessert']

courses.each { |course| Course.create(name: course) }

ingredients = ['Salt', 'Pepper', 'Tomato', 'Cheese', 'Sugar', 'Milk', 'Eggs', 'Wine']

ingredients.each { |ingredient| Ingredient.create(name: ingredient) }

2.times do
 User.create( first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              email: Faker::Internet.email,
              password: 'banana')
end

10.times do
  Recipe.create(creator_id: rand(1..2),
                course_id: rand(1..4),
                difficulty: rand(1..5),
                prep_time: rand(10..45),
                name: Faker::Lorem.word,
                directions: Faker::Lorem.paragraph)
end

20.times do
  RecipeIngredient.create( recipe_id: rand(1..10),
                          ingredient_id: rand(1..8),
                          amount: rand(1..4),
                          measurement: 'cups')
end
