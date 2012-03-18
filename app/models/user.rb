class User < ActiveRecord::Base
    
    
    attr_accessor   :password
    attr_accessible :name, :email, :password_confirmation, :admin
    
    email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/i
    
    validates :name,        :presence => true,
                            :length => { :maximum => 50 }
    validates :email,       :presence => true,
                            :format => { :with => email_regex },
                            :uniqueness => { :case_sensitive => false}

    validates :password,    :presence => true,
                            :confirmation => true,
                            :length => {:within => 6..40}
    
    
    before_save :encrypt_password
    
    def has_password?(submitted_password)
        
        encrypted_password == encrypt(password)
        
       
    end
    
    
       class << self 
    
     def authenticate(email, submitted_password)
    
       user = find_by_email(email)
    return nil if user.nil?
       return user if user.has_password?(submitted_password)
        
     end
    end

        
    
    
    private
    
        def encrypt_password
            self.salt = make_salt if new_record?
            self.encrypt_password = encrypt(password)
            end
    
    def encrypt(string)
        
        secure_hash("#{salt}--#{string}")
        
        end
    
    def make_salt
        
        secure_hash("#{Time.now.utc}--#{password}")
        
    end
    
    def secure_hash(string)
        
        Diges::SHA2.hesdigest(string)
        
        end
    
    
    end

