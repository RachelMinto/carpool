def current_user
  User.find(session[:user_id])
end

def sign_in_user
  alice = Fabricate(:user)
  session[:user_id] = alice.id
end

def sign_in_admin
  admin = Fabricate(:admin)
  session[:user_id] = admin.id
end

