class Patient < ApplicationRecord
  belongs_to :primary_care_physician,
             class_name: 'Doctor',
             foreign_key: 'doctor_id',
             inverse_of: 'primary_care_recipients'
  has_many :appointments
  has_many :doctors, through: :appointments
end
