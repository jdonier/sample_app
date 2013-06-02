class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  
  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true

  default_scope :order => 'microposts.created_at DESC'
  # Retourne les micro-messages des utilisateurs suivi par un utilisateur donn�.
  scope :from_users_followed_by, lambda { |user| followed_by(user) }

private

    # Retourne une condition SQL pour les utilisateurs suivis par un utilisateur donn�.
    # Nous incluons aussi les propres micro-messages de l'utilisateur.
    def self.followed_by(user)
      followed_ids = %(SELECT followed_id FROM relationships
                       WHERE follower_id = :user_id)
      where("user_id IN (#{followed_ids}) OR user_id = :user_id",
            { :user_id => user })
    end
end
