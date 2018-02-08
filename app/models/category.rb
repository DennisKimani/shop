class Category < ApplicationRecord
  mount_uploader :logo, LogoUploader
end
