# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :set_book, only: %i[update destroy show]
  def index
    @books = Book.all

    render json: @books
  end

  def show
    render json: @book
  end

  def create
    # @book = current_user.books.build(book_params)
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: :created
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy

    head :no_content
  end

  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: unprocessable_entity
    end
  end

  def book_params
    params.require(:book).permit(:title, :author_id)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  private :set_book, :book_params
end
