# make sure we're running inside Merb
if defined?(Merb::Plugins)

  # Merb gives you a Merb::Plugins.config hash...feel free to put your stuff in your piece of it
  Merb::Plugins.config[:merb_gravatar] = {
    :chickens => false
  }
  
  Merb::BootLoader.before_app_loads do
    # require code that must be loaded before the application
    module Merb
      module GlobalHelpers
        def gravatar(email, size = 80, attrs = {})
          id = Digest::MD5.hexdigest(email)
          uri = "http://www.gravatar.com/avatar/#{id}?s=#{size}"
          tag :img, nil, {:src => uri, :width => size,
            :height => size, :border => 0}.merge(attrs)
        end
      end
    end
  end
  
  Merb::BootLoader.after_app_loads do
    # code that can be required after the application loads
  end
end
