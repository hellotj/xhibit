class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

    # Setup accessible (or protected) attributes for your model
    
    # validates :name, presence: true
    # attr_accessible :title, :body
    acts_as_followable
    acts_as_follower
    has_many :posts
    has_many :comments
    acts_as_liker
end
