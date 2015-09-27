module ApplicationHelper
  def complete_info(current_user)
    if current_user.address_1.blank? ||
       current_user.city.blank? ||
       current_user.state_province.blank? ||
       current_user.zip_postal_code.blank? ||
       current_user.country.blank?
       'Please complete your information to be eligible for your warranty.'
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

end
