require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  test 'empty contact should be invalid' do
    contact = Contact.new
    assert_not contact.valid?
  end

  test 'incomplete contact should be invalid' do
    contact = Contact.new(first_name: 'Jan', last_name: 'Kowalski')
    assert_not contact.valid?
  end

  test 'should be valid' do
    contact = Contact.new(first_name: 'Jan', last_name: 'Kowalski', phone_number: '111111111')
    assert contact.valid?
  end
end
