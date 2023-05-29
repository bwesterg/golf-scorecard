Player.destroy_all
Course.destroy_all
Tee.destroy_all
Scorecard.destroy_all

# Create Courses
course1 = Course.create(name: 'Course A')
course2 = Course.create(name: 'Course B')

# Create Tees for Course 1
tee1 = course1.tees.create(name: 'Red Tees', yardage: 5000)
tee2 = course1.tees.create(name: 'Blue Tees', yardage: 6000)
tee3 = course1.tees.create(name: 'White Tees', yardage: 6500)

# Create Tees for Course 2
tee4 = course2.tees.create(name: 'Gold Tees', yardage: 5500)
tee5 = course2.tees.create(name: 'Black Tees', yardage: 7000)

# Create Players
player1 = Player.create(name: 'John Doe')
player2 = Player.create(name: 'Jane Smith')
player3 = Player.create(name: 'Michael Johnson')

# Create Scorecards
scorecard1 = Scorecard.create(player_name: player1.name, hole_1: 4, hole_2: 3, hole_3: 5, hole_4: 4, hole_5: 5, hole_6: 3, hole_7: 4, hole_8: 4, hole_9: 5, hole_10: 4, hole_11: 3, hole_12: 5, hole_13: 4, hole_14: 4, hole_15: 5, hole_16: 4, hole_17: 3, hole_18: 5, course: course1, tee: tee1)

scorecard2 = Scorecard.create(player_name: player2.name, hole_1: 5, hole_2: 4, hole_3: 6, hole_4: 4, hole_5: 6, hole_6: 4, hole_7: 5, hole_8: 5, hole_9: 6, hole_10: 5, hole_11: 4, hole_12: 6, hole_13: 5, hole_14: 5, hole_15: 6, hole_16: 5, hole_17: 4, hole_18: 6, course: course1, tee: tee2)

scorecard3 = Scorecard.create(player_name: player3.name, hole_1: 3, hole_2: 4, hole_3: 5, hole_4: 4, hole_5: 5, hole_6: 3, hole_7: 4, hole_8: 4, hole_9: 5, hole_10: 4, hole_11: 3, hole_12: 5, hole_13: 4, hole_14: 4, hole_15: 5, hole_16: 4, hole_17: 3, hole_18: 5, course: course2, tee: tee4)

puts 'Seeding completed successfully!'
