# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 10.times do
  # photo = Photo.new(username: Faker::Internet.user_name, caption: Faker::Lorem.sentence, url: Faker::Avatar.image, likes_count: Faker::Number.number(3))
  # photo.save!

  Photo.all.each do |photo|
    rand(10).times do
      photo.comments << Comment.new( username: Faker::Internet.user_name, cmt_text: Faker::Lorem.sentence)
    end
  end
# end