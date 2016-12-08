require "spec_helper"

describe Secret::PrimeHelper do
  describe "#generate_primes" do
    it "returns the correct prime numbers" do
      expect(Secret::PrimeHelper.generate_primes(20))
        .to eq([2, 3, 5, 7, 11, 13, 17, 19])

      expect(Secret::PrimeHelper.generate_primes(80))
        .to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
                41, 43, 47, 53, 59, 61, 67, 71, 73, 79])
    end
  end

  describe("#generate_pairs") do
    it "returns the correct pairing of numbers" do
      arr_1 = [2, 3, 5]
      expect(Secret::PrimeHelper.generate_pairs(arr_1))
        .to eq([[2, 2], [2, 3], [2, 5], [3, 2], [3, 3],
                [3, 5], [5, 2], [5, 3], [5, 5]])

      arr_2 = [2, 3, 5, 7]
      expect(Secret::PrimeHelper.generate_pairs(arr_2))
        .to eq([[2, 2], [2, 3], [2, 5], [2, 7], [3, 2],
                [3, 3], [3, 5], [3, 7], [5, 2], [5, 3],
                [5, 5], [5, 7], [7, 2], [7, 3], [7, 5],
                [7, 7]])
    end
  end
end
