class PagesController < ApplicationController
  def new
  	@email = Email.new
  end

  def create
  	@email = Email.new(email_params)
  	if @email.save
      flash[:success] = "Thank you for subscribing!"
      redirect_to root_path
  	else
  	  flash[:danger] = "Your email could not be saved. Please try again."
  	  redirect_to root_path
    end

  end

  private

	def email_params
	  params.require(:email).permit(:email)
	end
end
