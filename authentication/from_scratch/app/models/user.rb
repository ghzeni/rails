# frozen_string_literal: true

class User < ApplicationRecord
  attr_accessor :password
  has_many :articles

  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, on: :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate(email, password)
    user = find_by_email(email)
    return unless user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)

    user
  end

  private

  def encrypt_password
    return unless password.present?

    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end
end
