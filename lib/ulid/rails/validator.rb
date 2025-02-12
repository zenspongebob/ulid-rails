require "base32/crockford"

module ULID
  module Rails
    module Validator
      def self.is_valid?(v)
        return true if v.nil?
        v.length == 26 && Base32::Crockford.valid?(v)
      end
    end
  end
end
