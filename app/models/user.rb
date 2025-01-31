class User < ApplicationRecord

    validates :username, presence: {message: "用户名不能为空"}
    validates :username, uniqueness: {message: "用户名已经存在"}
    validates :password, presence: {message: "密码不能为空"}
    # validates :password, length: {minimum: 6, message: "密码长度必须超过6位"}
    
end
