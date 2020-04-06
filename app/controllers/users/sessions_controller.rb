# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :authenticate_user!

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  def create
    if user_signed_in?
      redirect_to "/"
    else
      respond_to do |f|
        f.html { redirect_to '/users/sign_in' }
        f.js { render 'errors_create.js.erb' }
      end
    end
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  private

  def user_params
    params.require(:user).permit(:zip_code, :hero, :volunteer, :email, :password, :password_confirmation, :location, :children_ages, :range_possible_hours, :gender, :experience, :school, :age_range_kids_sit, :first_name, :last_name, :county, :cell_number, :services_needed_or_provided, :transportation, :availability, :age, :max_number_kids_sit, :zip_code, :babysitting, :grocery_shopping, :e_learning_assistance, :sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :morning, :afternoon, :evening, :night, :other, :c_morning, :c_afternoon, :c_evening, :c_night, :age_16, :age_17, :age_18_up, :yes_transit, :no_transit, :remember_me)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
