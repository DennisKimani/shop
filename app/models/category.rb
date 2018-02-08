class Category < ApplicationRecord
  has_many :products
  
  mount_uploader :logo, LogoUploader
end
