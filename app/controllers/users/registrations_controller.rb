# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  def create
    @user = User.create(user_params)
    if @user.valid?
      sign_in @user
      redirect_to '/'
    else
      flash[:alert] = @user.errors.full_messages
      redirect_to '/users/sign_up'
    end
  end

  private

  def user_params
    params.require(:user).permit(:zip_code, :hero, :volunteer, :email, :password, :password_confirmation, :location, :children_ages, :range_possible_hours, :gender, :experience, :school, :age_range_kids_sit, :first_name, :last_name, :county, :cell_number, :services_needed_or_provided, :transportation, :availability, :age, :max_number_kids_sit, :zip_code, :babysitting, :grocery_shopping, :e_learning_assistance, :sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :morning, :afternoon, :evening, :night, :other, :c_morning, :c_afternoon, :c_evening, :c_night, :age_16, :age_17, :age_18_up, :yes_transit, :no_transit)
  end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
