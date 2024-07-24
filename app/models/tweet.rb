class Tweet < ApplicationRecord
   
    has_one_attached :photo
    def
    self.ransackable_attributes(auth_object = nil)
    ["ganbaru","kisetsu"]
    end
end
