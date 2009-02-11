class Remote < ActiveResource::Base
  self.timeout  = 5
  self.prefix   = '/endpoint'
end