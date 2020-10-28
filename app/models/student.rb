# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search (query)
    @students = []

    if query == ""
      @students = self.all

    elsif query
      self.all.collect do |s| 
        if s.name.downcase.include?(query)
          @students << s
        end
      end
    end
    @students
  end

end
