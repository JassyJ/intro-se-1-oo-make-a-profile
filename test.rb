require_relative 'profile_class.rb'

first_profile = Profile.new("Nicki")
second_profile = Profile.new("Sarah")

puts first_profile.name

first_profile.name = "Nicki the Great"
puts(first_profile.name) #print out their name to make sure the change worked.
