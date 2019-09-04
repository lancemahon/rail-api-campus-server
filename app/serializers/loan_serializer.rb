class LoanSerializer < ActiveModel::Serializer
  attributes :id, :date, :book, :borrower
  # has_one :borrower
  # has_one :book
end
