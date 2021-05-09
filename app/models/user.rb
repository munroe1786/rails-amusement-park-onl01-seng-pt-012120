class User < ActiveRecord::Base
    has_many :attractions, :through => :rides
    has_secure_password
    has_many :rides

    def mood
        unless admin
            happiness > nausea ? "happy" : "sad"
        end
    end
end
