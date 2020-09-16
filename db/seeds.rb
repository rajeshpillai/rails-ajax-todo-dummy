require 'faker'

Task.delete_all 

10.times do |index|
  Task.create(
    title: Faker::Book.title,
    position: index, 
    completed: index % 2 == 0 ? true : false
  )
end

