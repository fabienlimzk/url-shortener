class Url < ApplicationRecord
  validates :given_url, presence: true, on: :create
  validates_presence_of :shorten_url
  validates_format_of :given_url,
    with: /\A(?:(?:http|https):\/\/)?([-a-zA-Z0-9.]{2,256}\.[a-z]{2,4})\b(?:\/[-a-zA-Z0-9@,!:%_\+.~#?&\/\/=]*)?\z/
  
  before_validation :generate_shorten_url
  def generate_shorten_url
    self.shorten_url = SecureRandom.uuid[0..5]
  end
end
