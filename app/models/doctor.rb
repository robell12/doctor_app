class Doctor < ApplicationRecord
  belongs_to :appointment

  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments

  validates_presence_of :first_name
end
