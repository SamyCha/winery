module ApplicationHelper
  def avatar_url(user)
    if user.image
      "http://graph.facebook.com/#{user.uid}/picture?type=large"
    else #default avatar if the user desn't have one
     gravatar_id = Digest::MD5::hexdigest(user.email).downcase
     "http://gravatar.com/avatar/#{gravatar_id}.png"   end
   end

# For Stripe Connect
  def stripe_express_path
    "https://connect.stripe.com/express/oauth/authorize?response_type=code&client_id=<%= ENV['STRIPE_CA_ID'] %>&scope=read_write"
  end

end
