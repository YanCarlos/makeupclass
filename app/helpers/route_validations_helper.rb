# frozen_string_literal: true

module RouteValidationsHelper
  def sign_in_page?
    current_controller?('sessions', 'new')
  end

  def sign_up_page?
    current_controller?('registrations', 'new')
  end

  def current_controller?(contr, action)
    controller.controller_name == contr && controller.action_name == action
  end
end
