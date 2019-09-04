class BookSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :borrowers

  belongs_to :author
end
