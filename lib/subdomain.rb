class Subdomain
  def self.matches?(request)
    Rails.logger.debug "******************************** subdomain #{request}"
    case request.subdomain
    when 'www', '', nil
      false
    else
      true
    end
  end
end