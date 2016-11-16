class Appointment < ApplicationRecord
  validates_presence_of :time

  belongs_to :doctors
  belongs_to :patients
end
