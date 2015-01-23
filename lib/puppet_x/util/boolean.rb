module PuppetX
  module Util
  end
end

module PuppetX::Util::Boolean
  def self.defaultvalues
    true_values = [true, 'true', :true, :yes, 'yes']
    false_values = [false, 'false', :false, :no, 'no', :undef, nil]
    if true_values.include? value
      true
    elsif false_values.include? value
      false
    else
      raise ArgumentError, "Value '#{value}':#{value.class} cannot be determined as a boolean value"
    end
  end
end
