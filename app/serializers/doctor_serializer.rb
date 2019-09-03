class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :speciality, :zip_code
end
