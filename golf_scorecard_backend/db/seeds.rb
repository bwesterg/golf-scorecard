Course.destroy_all
Person.destroy_all

benton = Person.create(person_name: "Benton Westergaard")
tiger = Person.create(person_name: "Tiger Woods")
shark = Person.create(person_name: "Greg Norman")

park_hill = Course.create(course_name: "Park Hill Golf Course")
18.times do |i|
  park_hill.holes.create(
    hole_name: "Hole #{i + 1}",
    hole_number: i + 1,
    hole_distance: 300,
    hole_par: 3,
    course_id: park_hill.id
  )
end

pinehurst = Course.create(course_name: "Pinehurst Golf Course")
18.times do |i|
  pinehurst.holes.create(
    hole_name: "Hole #{i + 1}",
    hole_number: i + 1,
    hole_distance: 400,
    hole_par: 4,
    course_id: pinehurst.id
  )
end

lakewood = Course.create(course_name: "Lakewood Golf Course")
18.times do |i|
  lakewood.holes.create(
    hole_name: "Hole #{i + 1}",
    hole_number: i + 1,
    hole_distance: 500,
    hole_par: 5,
    course_id: lakewood.id
  )
end
