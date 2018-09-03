module Solargraph
  class Location
    # @return [String]
    attr_reader :filename

    # @return [Solargraph::Range]
    attr_reader :range

    # @param filename [String]
    # @param range [Solargraph::Range]
    def initialize filename, range
      @filename = filename
      @range = range
    end

    def to_hash
      {
        filename: filename,
        range: range.to_hash
      }
    end

    def == other
      return false unless other.is_a?(Location)
      filename == other.filename and range == other.range
    end
  end
end