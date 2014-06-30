class Phrase < ActiveRecord::Base

  def self.random
    Phrase.all.sample
  end
end
