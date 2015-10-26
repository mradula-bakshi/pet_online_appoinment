class Pet < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments
  accepts_nested_attributes_for :appointments
  
  validates :name, :presence => true,:length  => { :maximum => 35 }
  validates :breed, :presence => true,:length  => { :maximum => 35 }
  validates :age, :presence => true
  validates :weight, :presence => true
  validates :date_of_last_visit, :presence => true
  
end
