class Restraunt < ApplicationRecord

  validates :title, presence: true
  validates :address, presence: true
  validates :image_url, presence: true

  belongs_to :cuisine
  has_many :comments, :dependent => :destroy

  def self.search(q, qa)
    if q
      where('lower(title) LIKE ? AND lower(address) LIKE ?', "%#{q.downcase}%", "%#{qa.downcase}%")
    else
      all
    end
  end
end
