require 'chewy/search/parameters/storage'

module Chewy
  module Search
    class Parameters
      class FunctionScore < Storage
        # Adds new data to the existing data array.
        #
        # @see Chewy::Search::Parameters::Storage#update!
        # @param other_value [Hash, Array<Hash>] any acceptable storage value
        # @return [Array<Hash>] updated value
        def update!(other_value)
          @value = value | normalize(other_value)
        end

        def render
          {query: {function_score: {functions: value, score_mode: :multiply}}} if value.present?
        end

      private

        def normalize(value)
          Array.wrap(value).flatten(1).reject(&:blank?)
        end
      end
    end
  end
end
