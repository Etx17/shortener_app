class Link < ApplicationRecord
  belongs_to :user
  validates :destination_url, presence: true
  validates_format_of :destination_url, with: /((?:https?\:\/\/|www\.)(?:[-a-z0-9]+\.)*[-a-z0-9]+.*)/i
  validates :title, length: { maximum: 10 }
  validates :short_url, presence: true, uniqueness: true

  def shorten_url
    slug = rand(36**8).to_s(36)
    slug = rand(36**8).to_s(36) while Link.where(short_url: slug).any?
    slug
  end

  def sanitize
    destination_url.strip!
    sanitize_url = destination_url.downcase.gsub(/(https?:\/\/)|(www\.)/,"")
    "http://#{sanitize_url}"
  end
end
