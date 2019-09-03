class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit
  has_one :recipe #### same as belongs_to :recipe
end
