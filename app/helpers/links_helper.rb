module LinksHelper
  def what_device?(request)
    agent = request.user_agent
    return 'tablet' if agent =~ /(tablet|ipad)|(android(?!.*mobile))/i
    return 'mobile' if agent =~ /Mobile/

    'desktop'
  end
end
