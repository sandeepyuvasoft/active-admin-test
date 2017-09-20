class Student < ApplicationRecord
	require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
			selector = { first_name: row['First Name'] ,last_name: row['Last Name'],title: row['Title'],address: row['Address'],city: row['City']}
			student=Student.new(first_name: selector[:first_name],last_name: selector[:last_name] ,title: selector[:title],address: selector[:address],city: selector[:city])
			student.save
    end
  end 

end
