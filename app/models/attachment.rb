class Attachment < ApplicationRecord
  belongs_to :attachable, polymorphic: true, optional: true, touch: true

  validates :file, presence: true

  mount_uploader :file, FileUploader
end
