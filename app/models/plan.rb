class Plan < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  with_options presence: true do
    validates :title 
    validates :place
    validates :start_time
    validates :user_id 
   end



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
