module ApingBpong
  # For multiples of three, it returns 'APin'
  # For the multiples of five, it returns 'BPong'
  # For numbers which are multiples of both three and five, it returns 'APingBPong'
  # It returns the number for all other numbers
  class NumberToOutput
    MOD_3_OUTPUT = 'APing'.freeze
    MOD_5_OUTPUT = 'BPong'.freeze
    MOD_3_AND_MOD_5_OUTPUT = "#{MOD_3_OUTPUT}#{MOD_5_OUTPUT}".freeze

    def call(number:)
      mod_three = (number % 3).zero?
      mod_five = (number % 5).zero?

      return MOD_3_AND_MOD_5_OUTPUT if mod_three && mod_five
      return MOD_3_OUTPUT if mod_three
      return MOD_5_OUTPUT if mod_five

      number
    end

    # A facet allowing for calling the instance call method as a class method
    def self.call(...)
      new.call(...)
    end
  end
end
