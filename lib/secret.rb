require 'secret/prime_helper'

module Secret

  class << self
    def help
      puts "Determines if the function secret() is additive or not\n"
      puts "Usage: secret <INT>\n\n"
    end

    def process(args)
      return help if args.empty?
      num = Integer(args.first)
      primes = Secret::PrimeHelper.generate_primes(num)
      pairs = Secret::PrimeHelper.generate_pairs(primes)

      if is_additive?(pairs)
        puts 'Hoorah!! The function is additive!'
      else
        puts 'The function is NOT additive!'
      end

    rescue ArgumentError
      display_error("Wrong argument type. Please use an integer")
    end

    def is_additive?(pairs)
      pairs.each do |pair|
        if secret(pair[0] + pair[1]) != secret(pair[0]) + secret(pair[1])
          puts "x: #{pair[0]} y: #{pair[1]}"
          return false
        end
      end

      return true
    end

    def secret(num)
     return num
    end

    def display_error(message)
      puts "** Error: #{message} **"
    end
  end
end
