class City < ActiveRecord::Base
  validates :name, presence: true, allow_blank: false
  validates :short_name, presence: true, allow_blank: false
end
