# == Schema Information
#
# Table name: trips
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  subtitle   :string(255)
#  cover      :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Trip < ActiveRecord::Base
  belongs_to :user
  mount_uploader :cover, TripCoverUploader
end
