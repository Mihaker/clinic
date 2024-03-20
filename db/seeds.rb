
10.times do
  Category.create(name: Faker::Job.field)
end