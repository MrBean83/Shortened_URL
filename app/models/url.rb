require 'SecureRandom'

class Url < ActiveRecord::Base
  before_save :add_short

  def add_short
    if self.short_address == nil
      self.short_address = SecureRandom.hex[0..5]
    end
  end
end
