class Product < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true,
            length: { maximum: 250 }

  validates :price, presence: true,
            numericality: { greater_than_or_equal_to: 0.01 }

  has_attached_file :image, styles: {medium: '300x300>', thumb: '100x100>'},
      default_url: '/images/:style/missing.png'

  validates_attachment_content_type :image,
      content_type: ['image/jpeg', 'image/gif', 'image/png']
end
