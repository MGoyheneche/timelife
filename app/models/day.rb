# == Schema Information
#
# Table name: days
#
#  id          :integer          not null, primary key
#  city        :string(255)
#  country     :string(255)
#  date        :date
#  title       :string(255)
#  description :text
#  trip_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Day < ActiveRecord::Base
  belongs_to :trip
end
