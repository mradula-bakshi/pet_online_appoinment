class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :pet
  accepts_nested_attributes_for :doctor
  validates :pet_value, :presence => true 
  validates :customer, :presence => true
  validates :reason_for_visit, :presence => true
  validate :not_past_date

def not_past_date
  if !self.date_of_visit.nil?
    if self.date_of_visit < Date.today
      errors.add(:date_of_visit, 'should be greater then present date')
    end
  else
    errors.add(:date_of_visit, 'should not be blank.')
  end
end
end
