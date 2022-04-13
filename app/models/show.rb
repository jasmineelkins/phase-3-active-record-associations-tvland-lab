class Show < ActiveRecord::Base
  has_many :characters, dependent: :destroy
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.map { |actor| "#{actor.first_name} #{actor.last_name}" }
  end
end
