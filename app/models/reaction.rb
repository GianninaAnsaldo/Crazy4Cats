class Reaction < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :kind, acceptance: {
    accept: %w[like dislike boring neutral uninterested interested]
  }

  def self.kinds
    %w[like dislike boring uninterested interested]
  end
end
