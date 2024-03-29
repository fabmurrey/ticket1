module UsersHelper

	def avatar_for(user, options = { size: 50 })
    avatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    
    image_tag(gravatar_url, alt: user.name, class: "avatar")
  end  
end
