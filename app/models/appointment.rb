class Appointment < ActiveRecord::Base
  attr_accessible :title, :date, :cancelled
end
