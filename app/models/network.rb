class Network < ActiveRecord::Base
  has_many :shows, dependent: :destroy

  def sorry
    if call_letters.downcase == 'nbc'
      "We're sorry about passing on John Mulaney's pilot"
    end
  end
end
