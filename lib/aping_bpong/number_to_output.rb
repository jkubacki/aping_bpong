module ApingBpong
  # For multiples of three, it returns 'APin'
  # For the multiples of five, it returns 'BPong'
  # It returns the number for all other numbers
  class NumberToOutput
    def call(number:)
      number
    end

    # A facet allowing for calling the instance call method as a class method
    def self.call(...)
      new.call(...)
    end
  end
end
