# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  before_action :one_author_registered?, only: %i(new create)

  protected

  def one_author_registered?
    if Author.count == 1 && author_signed_in?
      redirect_to root_path
    elsif Author.count == 1
      redirect_to new_author_session_path
    end
  end
end
