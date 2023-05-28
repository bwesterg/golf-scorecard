Course.destroy_all
Person.destroy_all

benton = Person.create(person_name: "Benton Westergaard")
tiger = Person.create(person_name: "Tiger Woods")
shark = Person.create(person_name: "Greg Norman")

Course.create([
    {
        course_name: "Pebble Beach"
    },
    {
        course_name: "Saint Andrews"
    },
    {
        course_name: "Augusta"
    },
    {
        course_name: "Bushwood"
    }
])

# 100.times { |i| Course.create(course_name: Faker::Name.course_name) }
   
# Course.all.each { |course| course.holes.create(hole_name: Faker::hole.hole_name) }


