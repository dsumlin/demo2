module SessionsHelper
    
    def sign_in(user)
    
        cookies.permanent.signded[:remember_token] = [user.id]   
        
    end
end
