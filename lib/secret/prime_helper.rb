module Secret
  module PrimeHelper
    class << self
      def generate_primes(num)
        [].tap do |primes|
          (2..num).each do |val|
            primes << val if (2..Math.sqrt(val)).none? { |denom| val % denom == 0 }
          end
        end
      end

      def generate_pairs(arr)
        [].tap do |pairs|
          arr.each do |anchor|
            arr.each do |pivot|
              pairs << [anchor, pivot]
            end
          end
        end
      end
    end
  end
end
