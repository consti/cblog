class Post < ApplicationRecord
  belongs_to :author

  validates :title, presence: true

  scope :published, -> { where("posts.published_at < ?", Time.current.utc) }
  scope :draft, -> { where(published_at: nil) }
  scope :ordered, -> { order(published_at: :desc) }

  def draft?
    published_at.nil?
  end

  def published?
    !draft?
  end

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
