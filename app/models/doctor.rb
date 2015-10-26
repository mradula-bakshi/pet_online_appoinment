class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :pets, through: :appointments
  
  validates :name, :presence => true,:length  => { :maximum => 35 }
  validates :zip, :length  => { :minimum => 5 }
  validates :experience, :length => { :in => 1..100}
end
