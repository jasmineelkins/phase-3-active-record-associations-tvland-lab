class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # self.shows.map { |show| return show[:name] }
    # self.shows.each do |show|
    #   show[:name].characters.each { |char| char[:name] }
    # end
  end
end
