class Contact < ActiveRecord::Base
  # paperclip examples:
  #   http://github.com/thoughtbot/paperclip/tree/master
  has_attached_file :avatar,
    :styles => { :medium => "600x480>", :thumb  => "100x100#" }
    
  def attachment_url
    avatar.url(:original)
  end
end
