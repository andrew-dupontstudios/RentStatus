class Property < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },:use_timestamp => false
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
  has_many :units, dependent: :destroy
  accepts_nested_attributes_for :units
end
