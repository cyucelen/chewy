require 'chewy/search/parameters/storage'

module Chewy
  module Search
    class Parameters
      class ScoreMode < Storage
        include StringStorage
      end
    end
  end
end
