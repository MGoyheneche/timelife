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

require 'spec_helper'

describe Day do
  pending "add some examples to (or delete) #{__FILE__}"
end
