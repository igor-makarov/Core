class Array
  # Converts the array to a comma-separated sentence where the last element is
  # joined by the connector word.
  #
  # ==== Examples
  #
  #   [].to_sentence                      # => ""
  #   ['one'].to_sentence                 # => "one"
  #   ['one', 'two'].to_sentence          # => "one and two"
  #   ['one', 'two', 'three'].to_sentence # => "one, two, and three"
  #
  def to_sentence
    case length
    when 0, 1
      +join('')
    when 2
      +join(' and ')
    else
      +"#{self[0...-1].join(', ')}, and #{self[-1]}"
    end
  end
end