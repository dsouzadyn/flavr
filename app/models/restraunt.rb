class Restraunt < ApplicationRecord
  belongs_to :cuisine
  has_many :comments, :dependent => :destroy

  def self.search(q, qa)
    if q
      where('title LIKE ? AND address LIKE ?', "%#{q}%", "%#{qa}%")
    else
      all
    end
  end
end
