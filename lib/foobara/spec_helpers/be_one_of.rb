RSpec::Matchers.define :be_one_of do |*allowed_values|
  match do |actual|
    allowed_values.include?(actual)
  end

  failure_message do |actual|
    "expected one of #{allowed_values.inspect} but got #{actual}"
  end
end
