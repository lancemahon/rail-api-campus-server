class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :lance

  def lance
    'mahon'
  end
end
