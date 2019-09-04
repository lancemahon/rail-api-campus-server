class Doctor < ApplicationRecord
  has_many :primary_care_recipients,
           class_name: 'Patient',
           inverse_of: 'primary_care_physician'

  has_many :appointments
  has_many :patients, through: :appointments
end
