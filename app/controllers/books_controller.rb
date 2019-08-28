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

  def destroy
    @book.destroy

    head :no_content
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
