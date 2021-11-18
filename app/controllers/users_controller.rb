class UsersController < ApplicationController

  def show
    @user = current_user
    @islands = @user.islands
    @bookings = @user.bookings
    authorize @user
    @name = @user.email.split('@').first.capitalize
    pdf_generation    # call method responsible for pdf
    # a link is present on page to access the PDF file. check at bottom for comments
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    @user.update(user_params)
    authorize @user
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

  def pdf_generation
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@name}'s Profile", # Excluding ".pdf" extension.
               template: 'users/bookings.html.erb'
        # encoding: 'utf-8',          # uncomment if symbols like euro symbol does not appear in pdf
      end
    end
    # how it works:
    # tutorial:  https://www.youtube.com/watch?v=tFvtwEmW-GE
    # page views/users/bookings.html.erb has been created which will be used to create pdf file.
    # different from users/show.html.erb
    # will follow layout pdf.html.erb instead of applicaation.html.erb
    # check views/layouts/pdf.html.erb for comments
    # new css needs to be added in assets/stylesheets/pdf.scss
  end
end
