class Plan < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
     self.image.attached?
   end

   def self.search(search)
    if search != ""
      Plan.where('title LIKE(?)', "%#{search}%")
    else
      Plan.all
    end
  end
end
