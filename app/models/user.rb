class User < ApplicationRecord
    has_secure_password #passwords, password_confirmation, authenticate
end
