require 'chewy/search/parameters/storage'

module Chewy
  module Search
    class Parameters
      class BoostMode < Storage
        include StringStorage
      end
    end
  end
end
