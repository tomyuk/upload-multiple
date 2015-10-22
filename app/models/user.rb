class User < ActiveRecord::Base
  mount_uploader :image1, Image1Uploader
  mount_uploader :image2, Image2Uploader
  mount_uploader :image3, Image3Uploader
  mount_uploader :image4, Image4Uploader

  attr_accessor :image1_cache, :image1_cache, :image1_cache, :image4_cache
end
