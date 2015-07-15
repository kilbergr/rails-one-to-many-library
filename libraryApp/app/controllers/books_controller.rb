class BooksController < ApplicationController

	before_action :find_author, only: [:index, :new, :create]
	before_action :find_book, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  	@book = Book.new
  end

  def create
  	@book = @author.books.new(book_params)
  	if @book.save
  		flash[:success] = "Book Added"
  		redirect_to author_books_path(@author)
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @book.update book_params
  		redirect_to book_path(@book), notice: "Book Updated"
  	else
  		render :edit
  	end
  end

  def destroy
  	if @book.destroy
  		redirect_to author_books_path(@books.author)
  	else
  		render :show
  	end
  end

  private
  	def book_params
  		params.require(:book).permit(:title, :description)
  	end

	  def find_author
	  	@author = Author.find_by_id params[:author_id]
	  end

	  def find_book
	  	@book = Book.find_by_id params[:id]
	  end

end
