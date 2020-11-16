class User < ApplicationRecord
  validates :name, presence: true,
                   length: {maximum:15}

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :email, presence: true,
                    format: {with: VALID_EMAIL_REGEX}

  has_secure_password

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
  validates :password, presence: true,format: {with: VALID_PASSWORD_REGEX}

  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'

  has_many :comments
  has_many :comment_topics, through: :comments, source: 'topic'
end