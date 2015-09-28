module ApplicationHelper
  def complete_info(current_user)
    if current_user.address_1.blank? ||
       current_user.city.blank? ||
       current_user.state_province.blank? ||
       current_user.zip_postal_code.blank? ||
       current_user.country.blank?
       raw("Please complete your information to be eligible for your warranty. #{link_to 'Complete Registration' , edit_user_registration_path}")
    else
      "Welcome to TIME Club #{current_user.email}"
    end
  end

  def format_bike_grid(bike_count)
    if bike_count == 1
      '<div class="col-md-12 text-center bikes bike-1">'
    elsif bike_count == 2
      '<div class="col-md-6 text-center bikes bike-2">'
    elsif bike_count == 3
      '<div class="col-md-4 text-center bikes">'
    end
  end

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end

end
