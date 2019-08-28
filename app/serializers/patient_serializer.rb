class PatientSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :age

  def full_name
    object.first_name + ' ' + object.last_name
  end

  def age
    Date.today.year - object.born_on.year
  end
end
