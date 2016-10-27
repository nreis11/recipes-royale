courses = ['Appetizer', 'Salad', 'Main Course', 'Dessert']

courses.each { |course| Course.create(name: course) }
