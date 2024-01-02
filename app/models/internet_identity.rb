class InternetIdentity < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :pubkey
end
