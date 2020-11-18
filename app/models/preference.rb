class Preference < ApplicationRecord
  attribute :allow_create_songs, :boolean, default: false

  @@allow = false

  def self.class_method_test
    @@allow == !@@allow
  end

end
