RSpec::Matchers.define :be_a_boolean do
  match do |actual|
    true.equal?(actual) || false.equal?(actual)
  end

  failure_message do |actual|
    "expected a boolean (true or false) but got #{actual.inspect}"
  end
end
